
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"><title>
    新车销售定单管理
</title><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <base target="_self" />
 <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=2dfbab1f71764dc182eb87e4e0aad2fc" type="text/javascript"></script><link href="../style/common.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<style type="text/css">
    html, body
    {
        overflow: auto;
        font-family: 微软雅黑;
    }
    .TiShiBox
    {
        position: absolute;
        min-width: 20px;
        height: 20px;
        text-align: right;
        border: 1px solid #ccc;
        background: #ccc;
        z-index: 10000;
        display: none;
    }
    .vessel
    {
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
    .main-table .background-picture
    {
        background-image: url('../image/SaleOrder/middle.png');
        background-repeat: repeat-x;
        background-position: center top; /*background-attachment: fixed;*/
    }
    .CssHide
    {
        display: none;
    }
    .calculator-backdrop
    {
        background-color: #edf4fc;
        background: url('../image/SaleOrder/calculator-backdrop.png');
        background-repeat: repeat-x;
        background-position: center bottom;
        border: 2px solid #b3cae2;
    }
    .input-window
    {
    }
    .input-window input
    {
        border-width: 0px;
        border: none;
        font-family: 'Arial Unicode MS';
        background-image: url('../image/SaleOrder/input-window.png');
        background-repeat: no-repeat;
        background-position: center center;
        height: 40px;
        width: 320px;
        font-size: 2em;
        line-height: 40px;
        text-align: right;
    }
    .relative0
    {
        height: 19px;
    }
</style>
<script type="text/javascript">


    $(function () {
        $("#ddlCustZhengJianSort").change(function () {
            var ZhengJiangHao = $("#txtCustZhengJianHao").val();
            var ZhengJianSort = this.options[this.selectedIndex].text;
            if ((ZhengJianSort == "身份证" || ZhengJianSort == "居民身份证") && ZhengJiangHao != "") {
                var isIdCard = isIdCardNo(ZhengJiangHao);
            }
        });
        $("#txtCustZhengJianHao").blur(function () {
            var ZhengJianSort = $("#ddlCustZhengJianSort").find("option:selected").text();
            if (ZhengJianSort == "身份证" || ZhengJianSort == "居民身份证") {
                var isIdCard = isIdCardNo(this.value);

            }
        });
    });
    function isIdCardNo(num) {
        var factorArr = new Array(7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2, 1);
        var error;
        var varArray = new Array();
        var intValue;
        var lngProduct = 0;
        var intCheckDigit;
        var intStrLen = num.length;
        var idNumber = num;
        // initialize 
        if ((intStrLen != 15) && (intStrLen != 18)) {
            error = "输入身份证号码长度不对！";
            alert(error);
            //frmAddUser.txtIDCard.focus(); 
            return false;
        }
        // check and set value 
        for (i = 0; i < intStrLen; i++) {
            varArray[i] = idNumber.charAt(i);
            if ((varArray[i] < '0' || varArray[i] > '9') && (i != 17)) {
                error = "错误的身份证号码！.";
                alert(error);
                //frmAddUser.txtIDCard.focus(); 
                return false;
            } else if (i < 17) {
                varArray[i] = varArray[i] * factorArr[i];
            }
        }
        if (intStrLen == 18) {
            //check date 
            var date8 = idNumber.substring(6, 14);
            if (checkDate(date8) == false) {
                error = "身份证中日期信息不正确！.";
                //alert(error);
                //return false;
            }
            // calculate the sum of the products 
            for (i = 0; i < 17; i++) {
                lngProduct = lngProduct + varArray[i];
            }
            // calculate the check digit 
            intCheckDigit = 12 - lngProduct % 11;
            switch (intCheckDigit) {
                case 10:
                    intCheckDigit = 'X';
                    break;
                case 11:
                    intCheckDigit = 0;
                    break;
                case 12:
                    intCheckDigit = 1;
                    break;
            }
            // check last digit 
            if (varArray[17].toUpperCase() != intCheckDigit) {
                error = "身份证效验位(未位)错误!...正确为:" + intCheckDigit + ".";
                alert(error);
                return false;
            }
        }
        else { //length is 15 
            //check date 
            var date6 = idNumber.substring(6, 12);
            if (checkDate(date6) == false) {
                alert("身份证日期信息有误！.");
                return false;
            }
        }
        //alert ("Correct."); 
        return true;
    }
    function checkDate(str) {
        var y = str.substring(0, 4);
        var m = str.substring(4, 6);
        var d = str.substring(6, 8);

        str = y + "-" + parseInt(m)
        newStr = "";


        var dd2 = new Date(parseInt(y), parseInt(m), 0);
        newStr = dd2.getFullYear() + "-" + (dd2.getMonth() + 1);

        if (parseInt(d) > dd2.getDate()) {
            return false;
        }
        if (str != newStr) {
            return false;
        }
        return true;
    }
</script>
<script type="text/javascript">
    function showError(errorInfo) {
        $.messager.show({
            title: '温馨提示',
            msg: '<div align="center" style="font-size:14px;width:100%;hieght:80px;color:red;margin-top:10px;">' + errorInfo + '</div>',
            timeout: 2000,
            showType: 'fade'
        });
    }
    window.name = "win_this";
    Date.prototype.getDays = function () {
        var newDate = new Date();
        var newYear = newDate.getFullYear();
        var newMonth = newDate.getMonth() + 1;
        var R_year = false;
        R_year = ((newYear % 4 == 0 && newYear % 100 !== 0) || newYear % 400 == 0) ? false : true;
        if (newMonth == 1 || newMonth == 3 || newMonth == 5 || newMonth == 7 || newMonth == 8 || newMonth == 10 || newMonth == 12)
            month_len = 31;
        else if (newMonth == 2)
            month_len = (R_year) ? 28 : 29;
        else month_len = 30;
        return month_len;
    };


    //calc.add();加
    //calc.minus()减
    //calc.plus()乘
    //calc.divide()除
    var calc = {
        first: 0,
        second: 0,
        result: 0,
        init: function () {
            this.first = parseFloat(document.getElementById("first").value);
            this.second = parseFloat(document.getElementById("second").value);
        },
        setResult: function () {
            document.getElementById("result").value = this.result;
        },
        add: function () {
            this.init();
            this.result = this.first + this.second;
            this.setResult(0);
        },
        minus: function () {
            this.init();
            this.result = this.first - this.second;
            this.setResult(0);
        },
        plus: function () {
            this.init();
            this.result = this.first * this.second;
            this.setResult(0);
        },
        divide: function () {
            this.init();
            this.result = this.first / this.second;
            this.setResult(0);
        },
        percentage: function () {
            this.init();
            this.result = (this.first / this.second) * 100;
            this.setResult(0);
        }
    };

    function toDecimal(x) {
        if (x == "")
            x = 0;
        var f = parseFloat(x);
        if (isNaN(f)) {
            return false;
        }
        var f = Math.round(x * 100) / 100;
        var s = f.toString();
        var rs = s.indexOf('.');
        if (rs < 0) {
            rs = s.length;
            s += '.';
        }
        while (s.length <= rs + 2) {
            s += '0';
        }
        return s;
    }

    function count(type) {
        switch (type) {
            case "*":
                calc.plus();
                break;
            case "/":
                calc.divide();
                break;
            case "+":
                calc.add();
                break;
            case "%":
                calc.percentage();
                break;
            case "-":
                calc.minus();
                break;
            case "=":
                break;
        }
    }

        
</script>
<script type="text/javascript">
    var click_type = 0;
    //包牌计价器
    var message_info_baoPai = "请输入[包牌总价]。包牌总价不能为“0”或“空”。";
    var message_info_QueRen = "您选择的是包牌计价器：包牌总价为“|txt|”,请确认。";
    //打包计价器
    //var message_info_JinPing = "";
    //var message_info_BaoDan = "请输入[保单金额]。";
    var message_info_DaBaoZhongJia = "请输入[打包总价]。";
    var message_info_DaBaoQueRen = "您选择的是打包计价器：打包总价为“|txt|”,请确认。";
    //最低税价
    var message_info_alert = "您必须通过【计价器】才能执行最低税价。";
    var message_info_ShuiJiaQueRen = "最低税价后将冻结输入窗口，需要修改金额请【重新计算】。";

    var message01 = "您输入的有误，[精品费]必须大于成本费用。请重新输入！";
    var message02 = "您输入的有误，[精品费]必须小于销售费用。请重新输入！";

    //页面默认值
    var default_value = new Array(13);

    function page_window(tit, url, owidth, oheight) {
        $("#win-dow").html("<iframe name='' src='" + url + "' frameBorder='0' scrolling='no' style='width: 100%; height: 100%;'></iframe>");
        $("#win-dow").window({
            title: tit,
            width: owidth,
            modal: true,
            shadow: false,
            closed: false,
            height: oheight
        });
    }

    function color_window() {
        parent.winclose();
        //        $.messager.show({
        //            title: '温馨提示',
        //            msg: '<div align="center" style="font-size:14px;width:100%;hieght:80px;color:Orenge;margin-top:10px;">请完善客户资料</div>',
        //            timeout: 2000,
        //            showType: 'fade'
        //        });


    }
    function color_window2(type, value) {

        if (type == "Mobile")
            document.getElementById("hidOrder_CustMobile").value = value;
        if (type == "Time")
            document.getElementById("hidOrder_YuJiaoCheDate").value = value;


        if (document.getElementById("txtOrderStatus").value == "20" &&
                document.getElementById("hidOrder_CustMobile").value.trim().length > 0 &&
                document.getElementById("hidOrder_YuJiaoCheDate").value.trim().length > 0)
            document.getElementById("lblPageTitle").innerHTML = "Next：您是优秀的销售顾问，用户信息已完善，请打印交给客户！";
        parent.winclose();
    }

    var formula = "", formulaA = "";
    var torepeat = false;
    function dot_number(thisObj, p) {
        switch (p) {
            case -1:
                document.getElementById("tbToCount").value =
                    document.getElementById("tbToCount").value.substring(0,
                    document.getElementById("tbToCount").value.length - 1);
                break;
            case 10:
                if (document.getElementById("tbToCount").value.indexOf(".") <= 0)
                    document.getElementById("tbToCount").value = document.getElementById("tbToCount").value + ".";
                break;
            case 11:
                var che_sheng_jia = document.getElementById("txtCheShenJiaGe");
                var zui_di_che_shen_jia = document.getElementById("hidCheShenJiaGe");
                var gou_zhi_shui = document.getElementById("txtGouZhiShui");
                var zui_di_gou_zhi_shui = document.getElementById("hidZuiDiGouZhiShui");
                var qi_ta = document.getElementById("txtQiTa") + 0 + document.getElementById("txtQiTa2");
                var C8 = document.getElementById("C8");
                if (gou_zhi_shui.value != "") {
                    if (!confirm(message_info_ShuiJiaQueRen))
                        return false;
                    click_type = 3;
                    if (Number(gou_zhi_shui.value) > Number(zui_di_gou_zhi_shui.value)) {
                        switch (click_type) {
                            case 0:
                                break;
                            case 1:
                            case 2:
                            case 3:
                                qi_ta.value = toDecimal((Number(gou_zhi_shui.value) - Number(zui_di_gou_zhi_shui.value)) + (Number(che_sheng_jia.value) - Number(zui_di_che_shen_jia.value)) + Number(qi_ta.value));
                                break;
                        }

                        gou_zhi_shui.value = toDecimal(zui_di_gou_zhi_shui.value);
                        che_sheng_jia.value = toDecimal(zui_di_che_shen_jia.value);

                        document.getElementById("txtJiaoQiangXian").onfocus = function () { window.focus(); }
                        document.getElementById("txtCheChuanShui").onfocus = function () { window.focus(); }
                        document.getElementById("txtTiePaiFei").onfocus = function () { window.focus(); }
                        document.getElementById("txtTeBieGuiGe").onfocus = function () { window.focus(); }
                        document.getElementById("txtQiTa").onfocus = function () { window.focus(); }
                        document.getElementById("txtQiTa2").onfocus = function () { window.focus(); }
                    }
                    C8.disabled = true;
                    C8.src = "../image/SaleOrder/zdsj-e.png";
                }
                else
                    $.alert(message_info_alert, "最低税价");

                break;
            case 12:

                document.getElementById("txtCheShenJiaGe").value = document.getElementById("tbToCount").value;
                document.getElementById("tbToCount").value = "0";

                var C8 = document.getElementById("C8");
                C8.disabled = true;
                C8.src = "../image/SaleOrder/zdsj-e.png";

                var A1 = document.getElementById("A1");
                A1.disabled = true;
                A1.src = "../image/SaleOrder/baozhuang-c.png";

                var B1 = document.getElementById("B1");
                B1.disabled = true;
                B1.src = "../image/SaleOrder/dabao-c.png";

                document.getElementById("txtTeBieGuiGe").onfocus = function () { }
                document.getElementById("txtQiTa").onfocus = function () { }
                document.getElementById("txtQiTa2").onfocus = function () { }
                document.getElementById("ceShenJia").innerHTML = "车身净价:";
                click_type = 4;
                break;
            case 13:

                break;
            case 14:

                break;
            case 15:
                if (torepeat && document.getElementById("second").value != "0") {
                    count(formula);
                    document.getElementById("tbToCount").value = document.getElementById("result").value;
                    document.getElementById("first").value = document.getElementById("result").value;
                    document.getElementById("second").value = "0";
                    document.getElementById("result").value = "0";
                }
                formula = "*";
                formulaA = "*";
                break;
            case 16:
                if (torepeat && document.getElementById("second").value != "0") {
                    count(formula);
                    document.getElementById("tbToCount").value = document.getElementById("result").value;
                    document.getElementById("first").value = document.getElementById("result").value;
                    document.getElementById("second").value = "0";
                    document.getElementById("result").value = "0";
                }
                formula = "/";
                formulaA = "/";
                break;
            case 17:

                if (torepeat && document.getElementById("second").value != "0") {
                    count(formula);
                    document.getElementById("tbToCount").value = document.getElementById("result").value;
                    document.getElementById("first").value = document.getElementById("result").value;
                    document.getElementById("second").value = "0";
                    document.getElementById("result").value = "0";
                }
                formula = "+";
                formulaA = "+";

                break;
            case 18:

                if (torepeat && document.getElementById("second").value != "0") {
                    count(formula);
                    document.getElementById("tbToCount").value = document.getElementById("result").value;
                    document.getElementById("first").value = document.getElementById("result").value;
                    document.getElementById("second").value = "0";
                    document.getElementById("result").value = "0";
                }
                formula = "%";
                formulaA = "%";

                break;
            case 19:

                if (torepeat && document.getElementById("second").value != "0") {
                    count(formula);
                    document.getElementById("tbToCount").value = document.getElementById("result").value;
                    document.getElementById("first").value = document.getElementById("result").value;
                    document.getElementById("second").value = "0";
                    document.getElementById("result").value = "0";
                }
                formula = "-";
                formulaA = "-";

                break;
            case 24:

                formula = "";
                torepeat = false;
                formulaA = "";
                document.getElementById("first").value = "0";
                document.getElementById("second").value = "0";
                document.getElementById("result").value = "0";
                document.getElementById("tbToCount").value = "0";

                break;
            case 25:

                if (torepeat && document.getElementById("second").value != "0") {
                    count(formula);
                    document.getElementById("tbToCount").value = document.getElementById("result").value;
                    document.getElementById("first").value = document.getElementById("result").value;
                    document.getElementById("second").value = "0";
                    document.getElementById("result").value = "0";
                }
                formula = "=";
                formulaA = "=";

                break;
            default:

                if (formulaA == "*" || formulaA == "/" || formulaA == "+" || formulaA == "%" || formulaA == "-" || formulaA == "=") {
                    document.getElementById("tbToCount").value = "";
                    formulaA = "";
                    torepeat = true;
                }

                if ((/^[0-9]d*$/).test(p))
                    document.getElementById("tbToCount").value = (document.getElementById("tbToCount").value == "0" ? "" : document.getElementById("tbToCount").value) + p;

                if (!torepeat)
                    document.getElementById("first").value = document.getElementById("tbToCount").value;
                else
                    document.getElementById("second").value = document.getElementById("tbToCount").value;
                break;

        }
        return false;
    }

    function disabledKey(obj) {
        if (document.getElementById("first").value == "0")
            document.getElementById("first").value = obj.value;
        else if (document.getElementById("second").value == "0")
            document.getElementById("second").value = obj.value;
    }
</script>
<script type="text/javascript">
    function dot_mouse(thisObj, p1, p2) {
        switch (p1) {
            case 0:
                if (p2)
                    thisObj.src = "../image/SaleOrder/zero-dot.png";
                else
                    thisObj.src = "../image/SaleOrder/zero.png";
                break;
            case 1:
                if (p2)
                    thisObj.src = "../image/SaleOrder/one-dot.png";
                else
                    thisObj.src = "../image/SaleOrder/one.png";
                break;
            case 2:
                if (p2)
                    thisObj.src = "../image/SaleOrder/two-dot.png";
                else
                    thisObj.src = "../image/SaleOrder/two.png";
                break;
            case 3:
                if (p2)
                    thisObj.src = "../image/SaleOrder/three-dot.png";
                else
                    thisObj.src = "../image/SaleOrder/three.png";
                break;
            case 4:
                if (p2)
                    thisObj.src = "../image/SaleOrder/four-dot.png";
                else
                    thisObj.src = "../image/SaleOrder/four.png";
                break;
            case 5:
                if (p2)
                    thisObj.src = "../image/SaleOrder/five-dot.png";
                else
                    thisObj.src = "../image/SaleOrder/five.png";
                break;
            case 6:
                if (p2)
                    thisObj.src = "../image/SaleOrder/six-dot.png";
                else
                    thisObj.src = "../image/SaleOrder/six.png";
                break;
            case 7:
                if (p2)
                    thisObj.src = "../image/SaleOrder/seven-dot.png";
                else
                    thisObj.src = "../image/SaleOrder/seven.png";
                break;
            case 8:
                if (p2)
                    thisObj.src = "../image/SaleOrder/eight-dot.png";
                else
                    thisObj.src = "../image/SaleOrder/eight.png";
                break;
            case 9:
                if (p2)
                    thisObj.src = "../image/SaleOrder/nine-dot.png";
                else
                    thisObj.src = "../image/SaleOrder/nine.png";
                break;
            case 10:
                if (p2)
                    thisObj.src = "../image/SaleOrder/dot-dot.png";
                else
                    thisObj.src = "../image/SaleOrder/dot.png";
                break;
            case 11:
                if (p2)
                    thisObj.src = "../image/SaleOrder/zdsj-b.png";
                else
                    thisObj.src = "../image/SaleOrder/zdsj.png";
                break;
            case 12:
                if (p2)
                    thisObj.src = "../image/SaleOrder/sjfl-b.png";
                else
                    thisObj.src = "../image/SaleOrder/sjfl.png";
                break;
            case 13:
                if (p2)
                    thisObj.src = "../image/SaleOrder/syx-b.png";
                else
                    thisObj.src = "../image/SaleOrder/syx.png";
                break;
            case 14:
                if (p2)
                    thisObj.src = "../image/SaleOrder/jpf-b.png";
                else
                    thisObj.src = "../image/SaleOrder/jpf.png";
                break;
            case 15:
                if (p2)
                    thisObj.src = "../image/SaleOrder/cheng-b.png";
                else
                    thisObj.src = "../image/SaleOrder/cheng.png";
                break;
            case 16:
                if (p2)
                    thisObj.src = "../image/SaleOrder/chu-b.png";
                else
                    thisObj.src = "../image/SaleOrder/chu.png";
                break;
            case 17:
                if (p2)
                    thisObj.src = "../image/SaleOrder/jia-b.png";
                else
                    thisObj.src = "../image/SaleOrder/jia.png";
                break;
            case 18:
                if (p2)
                    thisObj.src = "../image/SaleOrder/yu-b.png";
                else
                    thisObj.src = "../image/SaleOrder/yu.png";
                break;
            case 19:
                if (p2)
                    thisObj.src = "../image/SaleOrder/jian-b.png";
                else
                    thisObj.src = "../image/SaleOrder/jian.png";
                break;
            case 20:
                if (p2)
                    thisObj.src = "../image/SaleOrder/baozhuang-b.png";
                else
                    thisObj.src = "../image/SaleOrder/baozhuang.png";
                break;
            case 21:
                if (p2)
                    thisObj.src = "../image/SaleOrder/dabao-b.png";
                else
                    thisObj.src = "../image/SaleOrder/dabao.png";
                break;
            case 22:
                if (p2)
                    thisObj.src = "../image/SaleOrder/jianyi-b.png";
                else
                    thisObj.src = "../image/SaleOrder/jianyi.png";
                break;
            case 23:
                if (p2)
                    thisObj.src = "../image/SaleOrder/congxing-b.png";
                else
                    thisObj.src = "../image/SaleOrder/congxing.png";
                break;
            case 24:
                if (p2)
                    thisObj.src = "../image/SaleOrder/c-b.png";
                else
                    thisObj.src = "../image/SaleOrder/c.png";
                break;
            case 25:
                if (p2)
                    thisObj.src = "../image/SaleOrder/dnegyu-b.png";
                else
                    thisObj.src = "../image/SaleOrder/dengyu.png";
                break;
            case -1:
                if (p2)
                    thisObj.src = "../image/SaleOrder/backspace-dot.png";
                else
                    thisObj.src = "../image/SaleOrder/backspace.png";
                break;
        }
    }

    //读取身份证信息
    function byId(id) {
        return document.getElementById(id);
    }

    var isInit = false;

    function readCard() {
        var cardId;
        var path;

        var obj = byId("CardReader1");
        var form1 = byId("form1");
        if (form1.ddlCustZhengJianSort.value != "身份证" && form1.ddlCustZhengJianSort.value != "居民身份证")
            return false;

        if (false == isInit) {
            //设置端口号，1表示串口1，2表示串口2，依此类推；1001表示USB。0表示自动选择
            obj.setPortNum(1001);
            isInit = true;
        }
        if (isInit == false)
            return false;
        obj.Flag = 0;

        var rst = obj.ReadCard();
        //获取各项信息
        if (obj.NameL() == "")
            return false;
        form1.txtCustName.value = obj.NameL();
        form1.ddlCustSex.value = obj.SexL();
        form1.txtCustHuJiAddress.value = obj.Address();
        cardId = obj.CardNo();
        form1.txtCustZhengJianHao.value = cardId;
        form1.txtJBRenName.value = obj.NameL();
        form1.ddlCustXingZhi.value = "个人购车";
        form1.ddlJBRenSex.value = obj.SexL();
        return false;
    }

    function CloseWindow() {

        window.opener = null;
        window.open("", "_self");
        window.close();


        return false;

    }

    function ShowOrderChange() {
        //            if (document.getElementById("hidOrder_YuJiaoCheDate").value == "" || document.getElementById("hidOrder_CustMobile").value == "") {
        //                alert("请先完善定单信息！");
        //                return false;
        //            }
        var Order_ID = document.getElementById("hidOrderID").value;
        var href = "OrderChangeDetail.aspx?Order_ID=" + Order_ID;
        var SizeZ = "dialogWidth:1002px;dialogHeight:620px;center:yes;edge:sunken;help:no;resizable:no;scroll:No;status:no;";
        var returnValue = window.showModalDialog(href, '', SizeZ);
        return false;
    }




    function ShowPeiCheDetail() {
        var OrderID = document.getElementById("hidOrderID").value;
        var href = "OrderPeiCheDetail.aspx?guidOrderID=" + OrderID + "";
        var SizeZ = 'dialogWidth:540px;dialogHeight:340px;center:yes;edge:sunken;help:no;resizable:no;scroll:No;status:no;';
        var returnValue = window.showModalDialog(href, window, SizeZ);
        return false;
    }

    //点击该按钮查询A卡客户
    function ShowACardQuery() {
        var SizeZ = "dialogWidth:800px;dialogHeight:500px;center:yes;edge:sunken;help:no;resizable:no;scroll:no;status:no;";
        var valReturn = window.showModalDialog("SaleOrder_ACardQuery.aspx?d=" + new Date(), window, SizeZ);
        //        if (valReturn != undefined )
        //            GetACardCust(valReturn);
        return false;
    }

    //获取A卡客户信息
    function GetACardCust(ACardCust) {
        if (ACardCust != "") {
            if (ACardCust.CustSort == "0") {

                document.getElementById("txtCustName").value = ACardCust.Cust_Name;  //顾客姓名
                document.getElementById("txtJBRenName").value = ACardCust.JBRen_Name; //经办人姓名
                document.getElementById("ddlCustSex").value = ACardCust.Cust_Sex;  //客户性别
                document.getElementById("ddlJBRenSex").value = ACardCust.Cust_Sex;  //客户性别
                document.getElementById("txtJBRenMobile").value = ACardCust.Cust_Mobile;  //手机号码
                document.getElementById("txtJBRenTel").value = ACardCust.Cust_Tel;   //联系电话
                document.getElementById("ddlCustXingZhi").value = ACardCust.Cust_XingZhi;  //客户性质
                document.getElementById("txtCustHuJiAddress").value = ACardCust.Cust_Address;  //客户地址
                document.getElementById("hidCustGuid").value = ACardCust.CustGuid; //客户Guid
            }
            else {

                document.getElementById("txtCustName").value = ACardCust.Cust_Name; //顾客姓名
                document.getElementById("txtJBRenName").value = ACardCust.JBRen_Name; //经办人姓名
                document.getElementById("txtCustZhengJianHao").value = ACardCust.IdNo;  //经办人姓名
                document.getElementById("txtJBRenMobile").value = ACardCust.Cust_Mobile;  //手机号码
                document.getElementById("txtJBRenTel").value = ACardCust.Cust_Tel;  //联系电话
                document.getElementById("txtCustHuJiAddress").value = ACardCust.Cust_Address;   //客户地址

                document.getElementById("ddlCarCheXi").value = ACardCust.CheXi;  //意向车系
                document.getElementById("hidCustGuid").value = ACardCust.CustGuid //客户Guid
                $("#hidACardCust").val(ACardCust.CheXi + "," + ACardCust.CheXing);
                document.getElementById("ddlCarColor").value = ACardCust.CarColor;
                $("#btnInitCar").click();
            }
        }
    }

    function ShowTitle(title) {
        var obj = event.srcElement;
        obj.title = title;
        var rValue = obj.title;
        // var str = "<div nowrap id=Div style='overflow:no;width:180PX;height:100%;font-size:9pt;padding:5 5;'>" + rValue + "</div>";
        var x = event.clientX;
        var y = event.clientY;
        //CallPopup.document.body.innerHTML = str;
        // CallPopup.show(x + 10, y, 80, 26, document.body);
        //CallPopup.document.body.
        //   style.border = "1 yellow solid";
        // CallPopup.document.body.bgColor = "green";
        // var oDivWidth = CallPopup.document.all.Div.scrollWidth;
        //动态设置宽度
        // if (oDivWidth > 120) {
        //    CallPopup.show(x, y, oDivWidth, 85, document.body);
        // }
        $("#divTiShi").css("left", x + "px");
        $("#divTiShi").css("top", y + "px");

        $("#divTiShi").css("color", "red");
        $("#divTiShi").show();
        $("#divTiShi")[0].innerHTML = "";
        $("#divTiShi").append(rValue);

    }

    function HiddenTitle() {
        //CallPopup.hide();
        $("#divTiShi").hide();
    }
    $(document).ready(function () {
        return;
        if ($('#hidOrderID').val() == "") {

            var strGoup = $('#txtSalorGroup').val();
            switch (strGoup) {
                case "一科": $('#ddlSaleQuDao').val('展厅');
                    break;
                case "二科": $('#ddlSaleQuDao').val('展厅');
                    break;
                case "三拓展": $('#ddlSaleQuDao').val('网点');
                    break;
                case "大客户": $('#ddlSaleQuDao').val('大客户');
                    break;
                default: $('#ddlSaleQuDao').val('批发');
                    break;
            }
        }
    });

      
        
</script>
<body onload="self.focus()">
    <form name="form1" method="post" action="OrderDetail.aspx?d=Fri+Jan+09+2015+16%3a22%3a12+GMT+0800&amp;&amp;OrderGuid=e2d0d606-9016-4ecc-913f-3b5b168e61f5" id="form1" target="win_this" style="padding: 0px; margin: 0px;">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__LASTFOCUS" id="__LASTFOCUS" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE5OTg4NjU2MzkPZBYCAgMPZBYaAhkPDxYCHgRUZXh0BQzlrprljZXkv53lrZhkZAIaDw8WAh8ABRxOZXh077ya562J5b6F5a6a5Y2V6K+E5a6h77yBZGQCHA8PFgIeB1Zpc2libGVoZGQCHQ8PFgIfAWhkZAIeDw8WAh8BaGRkAh8PDxYCHwFoZGQCIw8PFgIfAAUMWFNEMjAxNTAxMDU1ZGQCJA8PFgIfAAUKMjAxNS8wMS8wOWRkAiUPZBYCZg9kFgQCAQ8QDxYGHg5EYXRhVmFsdWVGaWVsZAUIdXNlckd1aWQeDURhdGFUZXh0RmllbGQFCHVzZXJOYW1lHgtfIURhdGFCb3VuZGdkEBUaCemCueWunOiKswbmtYvor5UG6IOh5ZCbBuadjuW7ugnnvZflsI/lqJ8G6Km55qyiCemSn+S7leWfjgnlvKDnlJznlJwJ5ZGo5a6H5a6+CemZiOm+meW/lwnog6HmoqbkupEG5p+v56eRBueOi+aZnwnnhorotoXljZcJ5L2Z552/5rSBBumrmOejigMxMjMG5YiY5YmRCeWImOaYn+i+sAnlj7LkuL3okI0J5b6Q5bu66IuxBuiCluS8nwnkvZnkuZDlubMG6KKB54OBCeS9meaAneaAnQnpgrnlm73ml7oVGiQ1YzlkMzkxZi1jNmVlLTQxMzMtODMyOS0zNDZiYjkxNDk3MTQkMGJmODEwNmItMWU1MC00NmYwLWI3OTItZGVjYjJmYTkwNTFjJDk3OGQwNjhjLTcwYmItNGM1Ny05MmE3LTA4MmI0NjIzZDZiYiQ3YTBjNjE3MS0zNmE0LTRhMjYtOWY2Ni0yOTM0MTdiMTdiNTIkYWU4YmRmNzAtZTk4NS00Nzk0LWIyNTEtNmUwZWJiODUyMzdjJDk0ZWU1OGZjLWM0YzMtNGQyNy1iN2U2LTAxMWQxNjBhZTQwMyQzMTc0Y2U5YS02MDAxLTQ3YTMtOTFhZC01ZWFlODA4ODA0ODIkZmEyNzUzYmQtOTg2Yy00Zjg1LWI1ZjctODkzM2Y3MmMzYTNhJGZkMzY0ZjdiLTRhYWYtNGQ1Ni05ZTQwLWVlMGVmNTY5NTc0MiRmYjVlOTA5MC1lNmEyLTRhODktOGVhNC0zN2U5MWE1NmMwYjAkNTEwYmY3Y2ItZTU3OS00YTRiLThlOGMtMjE2ODk3OGNiMmI4JDA1MDEwMjA2LWVkNzMtNDcyMy04ZDVjLWNlNzM0Yzg5OTNmNiQyMDc1ZDg5ZC1hNGNlLTRlNjktYjE5NC0xMGQ1YzJkOTU0ZGEkMjNhN2I3NzQtM2ZmNi00ZmFkLWEzNmQtN2NkMWE0NzUzZTk4JGEzY2Y3YzNjLWYyMmItNDY3Yy05NmE2LWVhMjEyYTFmYmIwMyQ5M2Y3MDgxYS0zOTQ0LTQzNWEtOWYzYy0xNTY3OGUyYjQwMGYkNjBhNGE0OTktMWI2OC00YmE4LWEwYTctNWU2NWFjYjE0ZmMzJGE2Zjc4ZDIwLWQzY2ItNDcxNC1hOTgzLTAzODFmOTY5N2ZhYSQyMzAxMDU5NS03ZjYzLTQ0Y2ItOGZkOC0xZDkyNmY2MDA1YzgkNTQ4OGI3NTAtMTExYy00YWYxLThhMTQtZmY4M2FiN2Q2ODllJDAxY2VkYjJhLTI1ZjQtNGFjYS04YTI1LWMwNTZlYjc5YmJmNyQ2MzY5ODllMS0yMGQ0LTRjZTUtODZlNi1hNTBiNDZiYmE3NTIkZjQxYTQ2M2YtNjM1My00MGIxLTg2NDktNGJiOWYyZjMzZDMyJDJjNGU5NTI2LWZjNmMtNGI5Yy04YzAyLTc5YTY5ZjNjMjY0YyQ1Mjc5MTdlZC02N2ZlLTQwODMtYjA0Ni0yNjkxNDAyZmI1YjYkMGZjMzE4YWMtMTY0Yi00YzJkLTk3YmEtOGY3YTk4NjIyNWNhFCsDGmdnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnFgECGGQCAw8PFgIfAAUS5Lmd5rGf5Liw55Sw5LiA56eRZGQCJg9kFgJmD2QWBAIBDxAPFgYfAgUBZB8DBQF2HwRnZBAVBgblsZXljoUG5om55Y+RCeWkp+WuouaItwbnvZHngrkDRENDABUGJDQ3NDg1N2QwLWQ0ODUtNGFmNC05MDU4LTJlMTA5ZTg5NGViYiRlYmQ4YmIzNy04N2EwLTRkNTctYTM4MS1lYTFkMDVkOGYzZGEkMmFkNjhhZWYtOGY2My00ODk3LTg3YmQtZWYzMDJlMjU3MDE1JDhmZDNkMzk0LTZkZTQtNDkxMS1hYTIyLTk2OGYzZjhlZmU0NiQzZTcxODdkOS0zNGJlLTRjYTUtOTY2My1mZGJlNmE1OGZmMzcAFCsDBmdnZ2dnZxYBZmQCAw8QZBAVAQblhbbku5YVAQblhbbku5YUKwMBZ2RkAiwPZBYCZg9kFgICAQ8QDxYGHwIFAWQfAwUBdh8EZ2QQFQYM5LyB5Lia6LSt6L2mDOi9pui+huaJueWPkQzkuKrkurrotK3ovaYM5pS/5bqc6YeH6LStBuWFtuS7lgAVBiQxOWI4MWRhMi03MjAwLTQ5OWUtYWM2Yi1iZWRiNzZlNWQ2MjMkYjhmODQyODgtYTZhNy00OTA5LTgzYTAtOGIzZGNjODA3MTc3JDFkMmI5YTgwLWQ0NjEtNDU0Yy1iODI3LTY4MzM1NmQwYWFmOSRkNzkyMjNiOC01MDE5LTQ1NDktYjQyMy0wNzQ1OTgzMTcyYjMkZGY5YmY0ZjQtNzkyNi00YjU0LTlkZWQtMmY4ODMzNWVjMDFjABQrAwZnZ2dnZ2cWAQICZAIuDxAPFgYfAgUBZB8DBQF2HwRnZBAVBg/muK/mvrPouqvku73or4EP5riv5r6z6Lqr5Lu96K+BBuaKpOeFpwnouqvku73or4ES57uE57uH5py65p6E5Luj56CBABUGJDAwOTdkZGIwLWM0OGUtNGUyMi1iMTMzLTZjZDdmYjczZDg1NyRhZWJlMjhjZC1lZjQ1LTRlMWItYmMwMi0zOTFkNzBiNGRmZGMkNTRkNjBjZjItODZkYy00NDJlLTgxOTItN2M2ZjJiNmI2ZDBlJGI2Mjk3NDdhLWVhYTctNDExMC1iZDdkLTJmMWY3M2ZkZWNmNSQyMzQ0YzdjOS05NWMzLTRjNzktODcxZi05MDBjZjM0MTgxZWYAFCsDBmdnZ2dnZ2RkAjMPZBYCZg9kFhACAQ8QDxYGHwMFE0Nhck1vZGxlX0NoYW5nU2hhbmcfAgUTQ2FyTW9kbGVfQ2hhbmdTaGFuZx8EZ2QQFQYAEuS4sOeUsO+8iOi/m+WPo++8iQzov5vlj6PkuLDnlLAM5pel5pys5Liw55SwDOWbm+W3neS4sOeUsAzkuIDmsb3kuLDnlLAVBgAS5Liw55Sw77yI6L+b5Y+j77yJDOi/m+WPo+S4sOeUsAzml6XmnKzkuLDnlLAM5Zub5bed5Liw55SwDOS4gOaxveS4sOeUsBQrAwZnZ2dnZ2cWAQIFZAIDDxAPFgYfAwUOQ2FyTW9kbGVfRGFpTWEfAgULQ2FyTW9kbGVfSUQfBGdkEBUCBEs2TTUGSzZWNS9FFQIkM2I0ODdiOWMtN2QxZS00YTQ2LTkyOWItM2U5YmMwZDhhZmZjJDkxZjZkYzAyLWE2YzAtNGE1Ni05ODIxLTk3ZWY0ZDdiOTNhNhQrAwJnZxYBAgFkAgUPFgIeA3NyYwUlLi4vSW5kZXgvZ2V0UGljLmFzcHg/cGFyZW50X0d1aWQ9NjAxMmQCBw8QDxYGHwIFDkNhck1vZGxlX0NoZVhpHwMFDkNhck1vZGxlX0NoZVhpHwRnZBAVFgAJ5aSn6Zy4546LCOS4sOeUsDg2CuWbveS6p1JBVjQG5rW354uuBuiKseWGoAbnmoflhqAM6L+b5Y+j6Zy46YGTCeWNoee9l+aLiQnmn6/mlq/ovr4P5YWw5b636YW36Lev5rO9G+WFsOW+t+mFt+i3r+azvTQuMOixquWNjueJiAnmma7mi4nlpJoJ5pmu6ZSQ5pavBumUkOW/lwblqIHpqbAN5paw5Zu95LqnUkFWNAnmlrDoirHlhqAM5paw5Y2h572X5ouJCeaWsOmUkOW/lwnmlrDlqIHpqbAG5Lit5be0FRYACeWkp+mcuOeOiwjkuLDnlLA4Ngrlm73kuqdSQVY0Bua1t+eLrgboirHlhqAG55qH5YagDOi/m+WPo+mcuOmBkwnljaHnvZfmi4kJ5p+v5pav6L6+D+WFsOW+t+mFt+i3r+azvRvlhbDlvrfphbfot6/ms700LjDosarljY7niYgJ5pmu5ouJ5aSaCeaZrumUkOaWrwbplJDlv5cG5aiB6amwDeaWsOWbveS6p1JBVjQJ5paw6Iqx5YagDOaWsOWNoee9l+aLiQnmlrDplJDlv5cJ5paw5aiB6amwBuS4reW3tBQrAxZnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnFgECEmQCCQ8QDxYGHwIFAWQfAwUBdh8EZ2QQFQ0G57Sr6ImyBuajleiJsgbnmb3oibIG6ZO26ImyBum7keiJsgbnuqLoibIG6JOd6ImyBue7v+iJsgznj43nj6Dnmb3oibIG5qmZ6ImyBueBsOiJsgnpk4LpnZLpk5wAFQ0kMTEwMGVjYzgtYjc1OC00NDBhLTgzM2YtMzYwNWZhMTc1ZWQ0JDQzMDQxZjFiLTk1OGMtNDk2Ny1iZTU5LWRmN2UxOWY2NjFmNSRkZjk5Y2MyZC0zYjdhLTQ0ZDItYmM1NC1kOTdjNzYyYmU4YWEkMTc0ZDRhYmItMWQwOS00MTNmLWE4ZGItYjhjMWE0NTFiMzJhJDkzOWFlMDRkLTZhYzgtNGE3Yi1iMmIzLTA5NGQyNmFhNTcyNyRkN2M1YjY3NS1iNzlhLTQ3ZmQtYTRkNS0zOGI5NzU1N2Q3ZTgkMGExZjg2YmQtNTI4Yi00NDJmLThiMWYtZmZiYTViY2QwNjIwJDBhNDlhY2VmLTVkMjEtNDE2OS04MjY4LWVmYmE0NjUxMzM2ZSRiMDA3OTc4Zi1hOWVjLTQ2YmMtODVmNC0wMDM3NzQxYmM2MjkkN2EzOTkwMmItMDUyMC00YzFjLThmNzMtOGMwNjk5MmM1Njc3JDVmM2VkYzMxLWIwZWEtNDhlZC04ZTM3LTk4NGY2ZjJkNzZmMSQ5ZWIyYmIyOC1lMmMzLTRjZmUtYWY1Ny02ZWQ0Y2Y2YjNiMjIAFCsDDWdnZ2dnZ2dnZ2dnZ2dkZAILDxAPFgYfAgUOQ2FyTW9kbGVfTW9kZWwfAwUOQ2FyTW9kbGVfTW9kZWwfBGdkEBUJABAxLiA2IEdMWC1J5a+86IiqBjEuNiBHTAgxLjYgR0wtSQ4xLjYgR0wtSeecn+eargkxLjYgR0xYLUkPMS42IEdMWC1J5a+86IiqCTEuOCBHTFgtSQsxLjggUHJlbWl1bRUJABAxLiA2IEdMWC1J5a+86IiqBjEuNiBHTAgxLjYgR0wtSQ4xLjYgR0wtSeecn+eargkxLjYgR0xYLUkPMS42IEdMWC1J5a+86IiqCTEuOCBHTFgtSQsxLjggUHJlbWl1bRQrAwlnZ2dnZ2dnZ2cWAQICZAIRDw8WAh8AZWRkAhMPDxYCHwBlZGQYAQUeX19Db250cm9sc1JlcXVpcmVQb3N0QmFja0tleV9fFgYFCmltZ2J0blNhdmUFD2ltZ2J0bkppbmdQaW5ZWgUPaW1nYnRuT3JkZXJTZW5kBQ9jaGtKaWFvUWlhblhpYW4FD2Noa0NoZUNodWFuU2h1aQUMY2hrVGllUGFpRmVpM57DwclfecqYowMpaopUVrUye1A=" />
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


<script src="/sag/WebResource.axd?d=SwS7SA_er4TnTg91ZZTEFR5vtPO3EMarGJnCBJJ1orLREyem5RiTirMA3gLHOj8Bz0mcxDXhcFWYDcNXY9x5rtJbLmY1&amp;t=635223658464687500" type="text/javascript"></script>


<script type="text/javascript">
//<![CDATA[
var __cultureInfo = '{"name":"zh-CN","numberFormat":{"CurrencyDecimalDigits":2,"CurrencyDecimalSeparator":".","IsReadOnly":true,"CurrencyGroupSizes":[3],"NumberGroupSizes":[3],"PercentGroupSizes":[3],"CurrencyGroupSeparator":",","CurrencySymbol":"￥","NaNSymbol":"非数字","CurrencyNegativePattern":2,"NumberNegativePattern":1,"PercentPositivePattern":1,"PercentNegativePattern":1,"NegativeInfinitySymbol":"负无穷大","NegativeSign":"-","NumberDecimalDigits":2,"NumberDecimalSeparator":".","NumberGroupSeparator":",","CurrencyPositivePattern":0,"PositiveInfinitySymbol":"正无穷大","PositiveSign":"+","PercentDecimalDigits":2,"PercentDecimalSeparator":".","PercentGroupSeparator":",","PercentSymbol":"%","PerMilleSymbol":"‰","NativeDigits":["0","1","2","3","4","5","6","7","8","9"],"DigitSubstitution":1},"dateTimeFormat":{"AMDesignator":"上午","Calendar":{"MinSupportedDateTime":"\/Date(-62135596800000)\/","MaxSupportedDateTime":"\/Date(253402271999999)\/","AlgorithmType":1,"CalendarType":1,"Eras":[1],"TwoDigitYearMax":2029,"IsReadOnly":true},"DateSeparator":"-","FirstDayOfWeek":0,"CalendarWeekRule":0,"FullDateTimePattern":"yyyy\u0027年\u0027M\u0027月\u0027d\u0027日\u0027 H:mm:ss","LongDatePattern":"yyyy\u0027年\u0027M\u0027月\u0027d\u0027日\u0027","LongTimePattern":"H:mm:ss","MonthDayPattern":"M\u0027月\u0027d\u0027日\u0027","PMDesignator":"下午","RFC1123Pattern":"ddd, dd MMM yyyy HH\u0027:\u0027mm\u0027:\u0027ss \u0027GMT\u0027","ShortDatePattern":"yyyy-M-d","ShortTimePattern":"H:mm","SortableDateTimePattern":"yyyy\u0027-\u0027MM\u0027-\u0027dd\u0027T\u0027HH\u0027:\u0027mm\u0027:\u0027ss","TimeSeparator":":","UniversalSortableDateTimePattern":"yyyy\u0027-\u0027MM\u0027-\u0027dd HH\u0027:\u0027mm\u0027:\u0027ss\u0027Z\u0027","YearMonthPattern":"yyyy\u0027年\u0027M\u0027月\u0027","AbbreviatedDayNames":["日","一","二","三","四","五","六"],"ShortestDayNames":["日","一","二","三","四","五","六"],"DayNames":["星期日","星期一","星期二","星期三","星期四","星期五","星期六"],"AbbreviatedMonthNames":["一月","二月","三月","四月","五月","六月","七月","八月","九月","十月","十一月","十二月",""],"MonthNames":["一月","二月","三月","四月","五月","六月","七月","八月","九月","十月","十一月","十二月",""],"IsReadOnly":true,"NativeCalendarName":"公历","AbbreviatedMonthGenitiveNames":["一月","二月","三月","四月","五月","六月","七月","八月","九月","十月","十一月","十二月",""],"MonthGenitiveNames":["一月","二月","三月","四月","五月","六月","七月","八月","九月","十月","十一月","十二月",""]}}';//]]>
</script>

<script src="/sag/ScriptResource.axd?d=aWn6WWpp6JO8tfEFpl1tF7Rvh83KkhGOBToLZUVPBE_uTIDWZMXlLWv48sOFRgJPMMDrku_LyOuffQNbacJu3NKR4v3dteNo25Pr1XPX8BiVnhXIO1r2XqK5CWTxFwCpAF83d-eFx1bKb55_QWzwQnNm4_NTSTH69r3Jwn1B0OXRdbCr0&amp;t=ffffffffb6431ae9" type="text/javascript"></script>
<script type="text/javascript">
//<![CDATA[
if (typeof(Sys) === 'undefined') throw new Error('ASP.NET Ajax 客户端框架未能加载。');
//]]>
</script>

<script src="/sag/ScriptResource.axd?d=r4zPOI1pOwmxrdPYS7pjMIEpzy6siFeaMUfm7ACBaZ0x-y-xHV47PqeHRhdIXT5Ce14vOke9QIFXuki2Is20sWysW8Md3fu6sEaHELKw1QUiw3oSTrDIxOdFoMVt-dF7TIIUe42VlHOj5BElHqMrTRl_HHD9iApw00wolmnCZE0zLwNj0&amp;t=ffffffffb6431ae9" type="text/javascript"></script>
    <input type="hidden" name="hiddOrderGuid" id="hiddOrderGuid" />
    <input name="txtJingPinType" type="hidden" id="txtJingPinType" />
    <input name="txtWangDian" type="hidden" id="txtWangDian" value="6012" />
    <input name="txtJinPingMingXi" type="hidden" id="txtJinPingMingXi" value="[]" />
    <input name="txtJinPingLiRun" type="hidden" id="txtJinPingLiRun" value="0.00" />
    <input name="hiddJPCostPrice" type="hidden" id="hiddJPCostPrice" value="0.00" />
    <input name="txtJinPingChengBen" type="hidden" id="txtJinPingChengBen" value="0.00" />
    <input name="txtFlowExaBeginInfo" type="hidden" id="txtFlowExaBeginInfo" value="此订单价格过低,产生严重亏损,请联系管理层商议评审!" />
    <input type="hidden" name="hidJPBillGuid" id="hidJPBillGuid" value="a0fb30f8-80e4-4749-af7f-edb79653d772" />
    <div style="display: none">
        
        <script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('ScriptManager1', document.getElementById('form1'));
Sys.WebForms.PageRequestManager.getInstance()._updateControls(['thidup','tUpdatePanel1','tUpdatePanel2','tddlCustXingZhiUp','tcarinfoUp','tupJiaoQiangXian','tupTiePai'], [], [], 90);
//]]>
</script>

        <div id="hidup">
    
                <input name="hidSWZCSort" type="hidden" id="hidSWZCSort" value="BaoPai" />
                <input name="hidSWZC_ID" type="hidden" id="hidSWZC_ID" value="9AD0E1E4-AA7A-4007-95DD-AD90D4FBC253" />
                <input name="hidHave_SWZC" type="hidden" id="hidHave_SWZC" value="1" />
                <input name="hidExamineResult" type="hidden" id="hidExamineResult" value="0" />
                <input name="hidExamineDetail" type="hidden" id="hidExamineDetail" />
                <input name="hidCheXingID" type="hidden" id="hidCheXingID" value="3b487b9c-7d1e-4a46-929b-3e9bc0d8affc" />
                <input name="hidCheShenJiaGe" type="hidden" id="hidCheShenJiaGe" value="93600.00" />
                <input name="hidZuiDiGouZhiShui" type="hidden" id="hidZuiDiGouZhiShui" value="8000.00" />
                <input name="hidCarPaiLiang" type="hidden" id="hidCarPaiLiang" />
            
</div>
        <input name="hidIsChuangSong" type="hidden" id="hidIsChuangSong" value="0" />
        <input name="hidOrderID" type="hidden" id="hidOrderID" value="e2d0d606-9016-4ecc-913f-3b5b168e61f5" />
        <input name="hidCarId" type="hidden" id="hidCarId" />
        <input name="hidVirtualOrderID" type="hidden" id="hidVirtualOrderID" />
        <input name="hidYZJingPinQty" type="hidden" id="hidYZJingPinQty" />
        <input name="hidCustGuid" type="hidden" id="hidCustGuid" />
        <input name="hidOrder_CustMobile" type="hidden" id="hidOrder_CustMobile" />
        <input name="hidOrder_YuJiaoCheDate" type="hidden" id="hidOrder_YuJiaoCheDate" />
        <input name="hidACardCust" type="hidden" id="hidACardCust" />
        <input name="hidYongPinId" type="hidden" id="hidYongPinId" value="6012" />
        <!--0 表示定单初始化,1 表示定单已经传送-->
        <input name="txtOrderStatus" type="hidden" id="txtOrderStatus" value="0" />
        <input name="flowStatus" type="hidden" id="flowStatus" value="0" />
        <input name="hidYZCarId" type="hidden" id="hidYZCarId" />
        <input name="hidCarModelID" type="hidden" id="hidCarModelID" />
    </div>
    <div class="title">
        <table cellspacing="0" width="100%">
            <tr>
                <td class="titlebg">
                    <span class="titleSpan">订单管理</span>
                </td>
                <td style="font-size: 10px;">
                    定单状态：<span id="lblOrderStatusName" style="color: red;">定单保存</span>
                </td>
                <td>
                    <span id="lblPageTitle" style="font-size: 10px; float: left; color: #009900;">Next：等待定单评审！</span>
                </td>
                <td align="right">
                    
                    
                    
                    
                    
                    <input id="btnJingPin" onclick="alert(document.getElementById('hidCustGuid').value+'\n'+document.getElementById('hidVirtualOrderID').value)"
                        type="hidden" value="精品明细" />
                    <input id="aa" onclick="alert(document.getElementById('hidCustGuid').value)" type="hidden"
                        value="潜在客户ID" />
                    <input type="image" name="imgbtnSave" id="imgbtnSave" src="../image/SaleOrder/button-save.png" onclick="return CheckForms();" style="border-width:0px;" />
                    
                    
                    <input onclick="CloseWindow();return false;" src="../image/SaleOrder/button-close.png"
                        style="border-right-width: 0px; border-top-width: 0px; border-bottom-width: 0px;
                        border-left-width: 0px;" type="image" />
                </td>
            </tr>
        </table>
    </div>
    <table class="main-table" style="padding: 0px; width: 900px;" cellpadding="0" cellspacing="0"
        align="center" border="0">
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
            <td class="background-picture">
                <table width="880px" style="height: 12px;" cellpadding="0" cellspacing="0" border="0">
                    <tr>
                        <td nowrap="nowrap" style="height: 25px; width: 76px" align="center">
                            定单编号：
                        </td>
                        <td nowrap="nowrap" width="100px">
                            <input name="txtOrderNo" type="text" value="XSD201501055" id="txtOrderNo" disabled="disabled" style="width:100px;" />
                        </td>
                        <td nowrap="nowrap" width="76px" align="center">
                            定单日期：
                        </td>
                        <td nowrap="nowrap" width="90px">
                            <input name="txtOrderDate" type="text" value="2015/01/09" id="txtOrderDate" disabled="disabled" onclick="return WdatePicker();" style="width:90px;" />
                        </td>
                        <td nowrap="nowrap" width="76px" align="center">
                            销售顾问：
                        </td>
                        <td nowrap="nowrap" colspan="2" width="180px">
                            <div id="UpdatePanel1">
    
                                    <table cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td>
                                                <select name="ddlSalors" onchange="javascript:setTimeout('__doPostBack(\'ddlSalors\',\'\')', 0)" id="ddlSalors" style="width:80px;">
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
        <option value="a6f78d20-d3cb-4714-a983-0381f9697faa">刘剑</option>
        <option value="23010595-7f63-44cb-8fd8-1d926f6005c8">刘星辰</option>
        <option value="5488b750-111c-4af1-8a14-ff83ab7d689e">史丽萍</option>
        <option value="01cedb2a-25f4-4aca-8a25-c056eb79bbf7">徐建英</option>
        <option value="636989e1-20d4-4ce5-86e6-a50b46bba752">肖伟</option>
        <option value="f41a463f-6353-40b1-8649-4bb9f2f33d32">余乐平</option>
        <option value="2c4e9526-fc6c-4b9c-8c02-79a69f3c264c">袁烁</option>
        <option selected="selected" value="527917ed-67fe-4083-b046-2691402fb5b6">余思思</option>
        <option value="0fc318ac-164b-4c2d-97ba-8f7a986225ca">邹国旺</option>

    </select>
                                            </td>
                                            <td>
                                                <input name="txtSalorGroup" type="text" value="九江丰田一科" id="txtSalorGroup" disabled="disabled" style="width:110px;" />
                                            </td>
                                        </tr>
                                    </table>
                                
</div>
                        </td>
                        <td nowrap="nowrap" width="76px" align="center">
                            销售渠道：
                        </td>
                        <td nowrap="nowrap" colspan="2" width="152px">
                            <div id="UpdatePanel2">
    
                                    <table cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td>
                                                <select name="ddlSaleQuDao" onchange="javascript:setTimeout('__doPostBack(\'ddlSaleQuDao\',\'\')', 0)" id="ddlSaleQuDao" class="relative0" style="width:70px;">
        <option selected="selected" value="474857d0-d485-4af4-9058-2e109e894ebb">展厅</option>
        <option value="ebd8bb37-87a0-4d57-a381-ea1d05d8f3da">批发</option>
        <option value="2ad68aef-8f63-4897-87bd-ef302e257015">大客户</option>
        <option value="8fd3d394-6de4-4911-aa22-968f3f8efe46">网点</option>
        <option value="3e7187d9-34be-4ca5-9663-fdbe6a58ff37">DCC</option>
        <option value=""></option>

    </select>
                                            </td>
                                            <td>
                                                <select name="ddlSubSaleQuDao" id="ddlSubSaleQuDao" class="relative0" style="width:100px;">
        <option value="其他">其他</option>

    </select>
                                                
                                            </td>
                                        </tr>
                                    </table>
                                
</div>
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
                <table width="880px" cellpadding="0" cellspacing="0" style="height: 100px; background-color: #FFFFFF;
                    border-collapse: collapse;">
                    <tr>
                        <td nowrap="nowrap" width="76px" rowspan="3" align="center" valign="bottom">
                            <input id="carmain" onclick="return false" type="image" src="../image/SaleOrder/chezhuinfo.png"
                                style="width: 45px; height: 45px" />
                        </td>
                        <td nowrap="nowrap" style="height: 25px; text-align: right;">
                            名 义&nbsp; 人：
                        </td>
                        <td nowrap="nowrap" colspan="3">
                            <div>
                                <input name="txtCustName" type="text" value="石银丹" maxlength="30" id="txtCustName" class="check-submit" title="名 义 人" required="true" style="width:92.5%;" />
                                <a onclick="return ShowACardQuery();" id="imgbtnCustSearch" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-search'" href="javascript:__doPostBack('imgbtnCustSearch','')"></a>
                                <input type="submit" name="btnInitCar" value="" id="btnInitCar" class="CssHide" />
                            </div>
                        </td>
                        <td nowrap="nowrap" width="120px" style="height: 25px; text-align: right;">
                            购车经办人：
                        </td>
                        <td nowrap="nowrap">
                            <input name="txtJBRenName" type="text" value="石银丹" maxlength="10" id="txtJBRenName" class="check-submit" title="购车经办人" required="true" style="width:150px;" />
                        </td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap" style="height: 25px; width: 76px; text-align: right;">
                            车主性别：
                        </td>
                        <td nowrap="nowrap" width="152px">
                            
                            <select name="ddlCustSex" id="ddlCustSex" class="check-submit" title="车主姓别" required="true" style="width:154px;">
    <option value=""></option>
    <option value="男">男</option>
    <option selected="selected" value="女">女</option>

</select>
                        </td>
                        <td nowrap="nowrap" style="text-align: right;" width="140px">
                            客户性质：
                        </td>
                        <td nowrap="nowrap" width="152px">
                            <div id="ddlCustXingZhiUp">
    
                                    <select name="ddlCustXingZhi" onchange="javascript:setTimeout('__doPostBack(\'ddlCustXingZhi\',\'\')', 0)" id="ddlCustXingZhi" class="check-submit" title="客户性质" required="true" style="width:154px;">
        <option value="19b81da2-7200-499e-ac6b-bedb76e5d623">企业购车</option>
        <option value="b8f84288-a6a7-4909-83a0-8b3dcc807177">车辆批发</option>
        <option selected="selected" value="1d2b9a80-d461-454c-b827-683356d0aaf9">个人购车</option>
        <option value="d79223b8-5019-4549-b423-0745983172b3">政府采购</option>
        <option value="df9bf4f4-7926-4b54-9ded-2f88335ec01c">其他</option>
        <option value=""></option>

    </select>
                                
</div>
                        </td>
                        <td nowrap="nowrap" style="text-align: right;">
                            经办人性别：
                        </td>
                        <td nowrap="nowrap">
                            <select name="ddlJBRenSex" id="ddlJBRenSex" class="check-submit" title="经办人性别" required="true" style="width:154px;">
    <option value=""></option>
    <option value="男">男</option>
    <option selected="selected" value="女">女</option>

</select>
                        </td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap" align="center" style="height: 25px; width: 76px; text-align: right;">
                            证件类别：
                        </td>
                        <td nowrap="nowrap" width="152px">
                            <select name="ddlCustZhengJianSort" id="ddlCustZhengJianSort" class="check-submit" title="证件类别" required="true" style="width:154px;">
    <option value="0097ddb0-c48e-4e22-b133-6cd7fb73d857">港澳身份证</option>
    <option value="aebe28cd-ef45-4e1b-bc02-391d70b4dfdc">港澳身份证</option>
    <option value="54d60cf2-86dc-442e-8192-7c6f2b6b6d0e">护照</option>
    <option selected="selected" value="b629747a-eaa7-4110-bd7d-2f1f73fdecf5">身份证</option>
    <option value="2344c7c9-95c3-4c79-871f-900cf34181ef">组织机构代码</option>
    <option value=""></option>

</select>
                        </td>
                        <td nowrap="nowrap" style="text-align: right;">
                            证件号码：
                        </td>
                        <td nowrap="nowrap" width="152px">
                            <input name="txtCustZhengJianHao" type="text" maxlength="20" id="txtCustZhengJianHao" class="check-submit" title="证件号码" required="true" style="width:150px;" />
                        </td>
                        <td nowrap="nowrap" style="text-align: right;">
                            经办人固话：
                        </td>
                        <td nowrap="nowrap">
                            <input name="txtJBRenTel" type="text" value="8502222" maxlength="12" id="txtJBRenTel" style="width:150px;" />
                        </td>
                    </tr>
                    <tr class="bottom-solid">
                        <td nowrap="nowrap" style="text-align: center;" class="style2">
                            车主信息
                        </td>
                        <td nowrap="nowrap" style="height: 25px; text-align: right; width: 76px">
                            联系地址：
                        </td>
                        <td nowrap="nowrap" colspan="3">
                            <div>
                                <input name="txtCustHuJiAddress" type="text" value="江西省九江市" maxlength="40" id="txtCustHuJiAddress" class="check-submit" title="联系地址" required="true" style="width:444px;" /></div>
                        </td>
                        <td nowrap="nowrap" style="text-align: right;">
                            经办人手机：
                        </td>
                        <td nowrap="nowrap">
                            <input name="txtJBRenMobile" type="text" value="13926818394" maxlength="12" id="txtJBRenMobile" class="check-submit" onblur="CountExits();" title="经办人手机" validType="Mobile" required="true" onchange="ClearCustId()" style="width:150px;" />
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
                <div id="carinfoUp">
    
                        <table cellpadding="0" cellspacing="0" width="880px" style="height: 120px; background-color: #FFFFFF;
                            border-collapse: collapse;">
                            
                            <tr>
                                <td nowrap="nowrap" width="76px" rowspan="3" align="center" valign="bottom">
                                    <img alt="" src="../image/SaleOrder/carInfo.png" style="width: 45px; height: 45px" />
                                </td>
                                <td nowrap="nowrap" style="height: 25px; width: 76px; text-align: right;">
                                    车型厂牌：
                                </td>
                                <td nowrap="nowrap" width="152px">
                                    <select name="ddlChangShang" onchange="javascript:setTimeout('__doPostBack(\'ddlChangShang\',\'\')', 0)" id="ddlChangShang" class="check-submit" title="车型厂牌" required="true" style="width:154px;">
        <option value=""></option>
        <option value="丰田（进口）">丰田（进口）</option>
        <option value="进口丰田">进口丰田</option>
        <option value="日本丰田">日本丰田</option>
        <option value="四川丰田">四川丰田</option>
        <option selected="selected" value="一汽丰田">一汽丰田</option>

    </select>
                                </td>
                                <td nowrap="nowrap" style="text-align: right;">
                                    车型代码：
                                </td>
                                <td nowrap="nowrap">
                                    <select name="ddlCarCheXingDaiMa" onchange="javascript:setTimeout('__doPostBack(\'ddlCarCheXingDaiMa\',\'\')', 0)" id="ddlCarCheXingDaiMa" style="width:154px;">
        <option value="3b487b9c-7d1e-4a46-929b-3e9bc0d8affc">K6M5</option>
        <option selected="selected" value="91f6dc02-a6c0-4a56-9821-97ef4d7b93a6">K6V5/E</option>

    </select>
                                </td>
                                <td rowspan="6" style="width: 120px; text-align: right;">
                                    车型示意图:
                                </td>
                                <td nowrap="nowrap" rowspan="6">
                                    <div style="border: 1px solid #CCCCCC; width: 152px;">
                                        <img src="../index/getPic.aspx?parent_Guid=6012" id="imgCarPic" onerror="this.src='../image/SaleOrder/null-image.png'" style="width: 152px; height: 101px" /></div>
                                </td>
                            </tr>
                            <tr>
                                <td nowrap="nowrap" style="height: 25px; width: 76px; text-align: right;">
                                    车 系：
                                </td>
                                <td nowrap="nowrap">
                                    <select name="ddlCarCheXi" onchange="javascript:setTimeout('__doPostBack(\'ddlCarCheXi\',\'\')', 0)" id="ddlCarCheXi" class="check-submit" title="车 系" required="true" style="width:155px;">
        <option value=""></option>
        <option value="大霸王">大霸王</option>
        <option value="丰田86">丰田86</option>
        <option value="国产RAV4">国产RAV4</option>
        <option value="海狮">海狮</option>
        <option value="花冠">花冠</option>
        <option value="皇冠">皇冠</option>
        <option value="进口霸道">进口霸道</option>
        <option value="卡罗拉">卡罗拉</option>
        <option value="柯斯达">柯斯达</option>
        <option value="兰德酷路泽">兰德酷路泽</option>
        <option value="兰德酷路泽4.0豪华版">兰德酷路泽4.0豪华版</option>
        <option value="普拉多">普拉多</option>
        <option value="普锐斯">普锐斯</option>
        <option value="锐志">锐志</option>
        <option value="威驰">威驰</option>
        <option value="新国产RAV4">新国产RAV4</option>
        <option value="新花冠">新花冠</option>
        <option selected="selected" value="新卡罗拉">新卡罗拉</option>
        <option value="新锐志">新锐志</option>
        <option value="新威驰">新威驰</option>
        <option value="中巴">中巴</option>

    </select>
                                </td>
                                <td nowrap="nowrap" style="text-align: right;">
                                    车身颜色：
                                </td>
                                <td nowrap="nowrap">
                                    <select name="ddlCarColor" id="ddlCarColor" class="check-submit" title="车身颜色" required="true" style="width:154px;">
        <option value="1100ecc8-b758-440a-833f-3605fa175ed4">紫色</option>
        <option value="43041f1b-958c-4967-be59-df7e19f661f5">棕色</option>
        <option selected="selected" value="df99cc2d-3b7a-44d2-bc54-d97c762be8aa">白色</option>
        <option value="174d4abb-1d09-413f-a8db-b8c1a451b32a">银色</option>
        <option value="939ae04d-6ac8-4a7b-b2b3-094d26aa5727">黑色</option>
        <option value="d7c5b675-b79a-47fd-a4d5-38b97557d7e8">红色</option>
        <option value="0a1f86bd-528b-442f-8b1f-ffba5bcd0620">蓝色</option>
        <option value="0a49acef-5d21-4169-8268-efba4651336e">绿色</option>
        <option value="b007978f-a9ec-46bc-85f4-0037741bc629">珍珠白色</option>
        <option value="7a39902b-0520-4c1c-8f73-8c06992c5677">橙色</option>
        <option value="5f3edc31-b0ea-48ed-8e37-984f6f2d76f1">灰色</option>
        <option value="9eb2bb28-e2c3-4cfe-af57-6ed4cf6b3b22">铂青铜</option>
        <option value=""></option>

    </select>
                                </td>
                            </tr>
                            <tr>
                                <td nowrap="nowrap" style="height: 25px; width: 76px; text-align: right;">
                                    车 型：
                                </td>
                                <td nowrap="nowrap">
                                    <select name="ddlCarCheXing" onchange="javascript:setTimeout('__doPostBack(\'ddlCarCheXing\',\'\')', 0)" id="ddlCarCheXing" class="check-submit" style="width:154px;">
        <option value=""></option>
        <option value="1. 6 GLX-I导航">1. 6 GLX-I导航</option>
        <option selected="selected" value="1.6 GL">1.6 GL</option>
        <option value="1.6 GL-I">1.6 GL-I</option>
        <option value="1.6 GL-I真皮">1.6 GL-I真皮</option>
        <option value="1.6 GLX-I">1.6 GLX-I</option>
        <option value="1.6 GLX-I导航">1.6 GLX-I导航</option>
        <option value="1.8 GLX-I">1.8 GLX-I</option>
        <option value="1.8 Premium">1.8 Premium</option>

    </select>
                                </td>
                                <td nowrap="nowrap" width="140px" style="text-align: right;">
                                    车辆 SFX：
                                </td>
                                <td nowrap="nowrap" width="152px">
                                    <input name="txtCarSFX" type="text" value="K6V5/E" maxlength="10" id="txtCarSFX" style="width:150px;" />
                                </td>
                            </tr>
                            <tr>
                                <td nowrap="nowrap" style="text-align: center;" width="76px">
                                    车辆信息
                                </td>
                                <td nowrap="nowrap" style="height: 25px; width: 76px; text-align: right;">
                                    特别配置：
                                </td>
                                <td nowrap="nowrap">
                                    <input name="txtCarTeBiePeiZhi" type="text" maxlength="20" id="txtCarTeBiePeiZhi" style="width:150px;" />
                                </td>
                                <td nowrap="nowrap" style="text-align: right;">
                                    车辆编号：
                                </td>
                                <td nowrap="nowrap">
                                    <input name="txtCarCheLiangBianHao" type="text" maxlength="15" readonly="readonly" id="txtCarCheLiangBianHao" style="width:150px;" />
                                </td>
                            </tr>
                            <tr>
                                <td nowrap="nowrap" align="center" width="76px">
                                    &nbsp;
                                </td>
                                <td nowrap="nowrap" style="width: 76px; text-align: right;">
                                    车 架&nbsp; 号：
                                </td>
                                <td nowrap="nowrap" colspan="3">
                                    <div>
                                        <input name="txtCarCheJiaHao" type="text" maxlength="20" readonly="readonly" id="txtCarCheJiaHao" style="width:90%;" />
                                        <input type="image" name="imgbtnJingPinYZ" id="imgbtnJingPinYZ" src="../image/SaleOrder/1509_s.png" alt="预装车辆" onclick="return ShowCarJingPinYZ_Mag();" style="height:20px;width:30px;border-width:0px;" />
                                    </div>
                                </td>
                            </tr>
                        </table>
                    
</div>
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
                <table cellpadding="0" style="height: 310px;" cellspacing="0">
                    <tr>
                        <td nowrap="nowrap" style="width: 76px;" rowspan="3" valign="middle" align="center">
                            &nbsp;
                        </td>
                        <td nowrap="nowrap" style="width: 76px; text-align: right;" onmousemove="if (window.event.ctrlKey) { ShowTitle(document.getElementById('hidCheShenJiaGe').value); }"
                            onmouseout="HiddenTitle()">
                            <span id="ceShenJia">车身价格：</span>
                        </td>
                        <td nowrap="nowrap" width="152px" style="height: 28px;">
                            <input name="txtCheShenJiaGe" type="text" value="0.00" maxlength="14" id="txtCheShenJiaGe" onfocus="window.focus()" style="width:151px;text-align: right" />
                        </td>
                        <td nowrap="nowrap" style="width: 140px; text-align: right;">
                            其 他&nbsp; 一：
                        </td>
                        <td>
                            <input name="txtQiTa" type="text" value="0.00" maxlength="8" id="txtQiTa" onkeyup="salesClass.qiTa_keyUp(this)" onchange="this.value = toDecimal(this.value)" style="width:150px;text-align: right" />
                        </td>
                        <td style="width: 120px; text-align: right;">
                            其 他&nbsp; 二：
                        </td>
                        <td height="26px">
                            <input name="txtQiTa2" type="text" value="0.00" maxlength="8" id="txtQiTa2" onkeyup="salesClass.qiTa2_keyUp(this)" onchange="this.value = toDecimal(this.value)" style="width:150px;text-align: right" />
                        </td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap" style="text-align: right;" onmousemove="if (window.event.ctrlKey) { ShowTitle(document.getElementById('hidZuiDiGouZhiShui').value); }"
                            onmouseout="HiddenTitle()">
                            购 置&nbsp; 税：
                        </td>
                        <td nowrap="nowrap" width="152px" style="height: 28px;">
                            <input name="txtGouZhiShui" type="text" value="0.00" maxlength="10" id="txtGouZhiShui" onfocus="window.focus()" style="width:150px;text-align: right" />
                        </td>
                        <td nowrap="nowrap" style="text-align: right;">
                            支付定金：
                        </td>
                        <td nowrap="nowrap" width="152px">
                            <input name="txtYuFuJinE" type="text" value="0.00" maxlength="14" id="txtYuFuJinE" class="check-submit" onchange="this.value = toDecimal(this.value)" validType="float" title="支付定金" required="true" style="width:150px;text-align: right" />
                        </td>
                        <td nowrap="nowrap" height="26px" style="text-align: right;">
                            定单总额：
                        </td>
                        <td nowrap="nowrap" width="152px">
                            <input name="txtDingDanZhonge" type="text" value="1750.00" maxlength="14" id="txtDingDanZhonge" onfocus="window.focus()" style="width:150px;text-align: right; margin-right: 1px;" />
                        </td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap" style="text-align: right;" onmousemove="if (window.event.ctrlKey) { ShowTitle(document.getElementById('hidCheShenJiaGe').value); }"
                            onmouseout="HiddenTitle()">
                            保单金额：
                        </td>
                        <td nowrap="nowrap" width="152px" style="height: 28px;">
                            <input name="txtBaoDanJine" type="text" value="950.00" maxlength="14" id="txtBaoDanJine" onfocus="window.focus()" style="width:150px;text-align: right" />
                        </td>
                        <td nowrap="nowrap" rowspan="10" align="right">
                            <table align="center" style="height: 240px;">
                                <tr>
                                    <td colspan="2">
                                        <input id="B1" type="image" onclick="salesClass.daBaoJiJiaQi_click();return false"
                                            onmousemove="dot_mouse(this,21,true)" onmouseout="dot_mouse(this,21,false)" src="../image/SaleOrder/dabao.png" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <input id="A1" type="image" onclick="salesClass.baoPaiJiJiaQi_click();return false;"
                                            onmousemove="dot_mouse(this,20,true)" onmouseout="dot_mouse(this,20,false)" src="../image/SaleOrder/baozhuang.png" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <input id="C1" type="image" onclick="salesClass.calculator(this);return false;" src="../image/SaleOrder/jianyi.png"
                                            alt="销售型" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <input id="D1" type="image" onclick="salesClass.removeAllValue();return false;" onmousemove="dot_mouse(this,23,true)"
                                            onmouseout="dot_mouse(this,23,false)" src="../image/SaleOrder/congxing.png" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: left;">
                                        <input id="iButAppraisal" disabled="disabled" onclick="return ibutappraisal_click('');"
                                            type="image" src="../image/SaleOrder/dingsheng-b.png" />
                                    </td>
                                    <td style="text-align: right;">
                                        <input type="image" name="imgbtnOrderSend" id="imgbtnOrderSend" disabled="disabled" src="../image/SaleOrder/chuangsong-b.png" style="border-width:0px;" />
                                        <script type="text/javascript">

                                            $(function () {
                                                var flowStatus = document.getElementById("flowStatus").value;
                                                var OrderStatus = document.getElementById("txtOrderStatus").value;
                                                var hidOrderID = document.getElementById("hidOrderID").value;
                                                if (OrderStatus != "0" || hidOrderID == "") {

                                                    document.getElementById("iButAppraisal").disabled = true;
                                                    document.getElementById("iButAppraisal").src = "../image/SaleOrder/dingsheng-b.png";
                                                }

                                                if (OrderStatus == "0" && hidOrderID != "" &&
                                                           flowStatus != "1" && flowStatus != "2" && flowStatus != "3") {

                                                    document.getElementById("iButAppraisal").disabled = false;
                                                    document.getElementById("iButAppraisal").src = "../image/SaleOrder/dingsheng.png";
                                                }

                                                //                                                            if (($('#hidIsChuangSong').val() != "0" && $('#hidIsChuangSong').val() != "0.00") || ($('#txtOrderStatus').val() == '0' || $('#txtOrderStatus').val() == '20')) {
                                                //                                                                document.getElementById("imgbtnOrderSend").disabled = true;
                                                //                                                                document.getElementById("imgbtnOrderSend").src = "../../StyleSheet/images/chuangsong-b.png";
                                                //                                                            }

                                                //                                                            else {
                                                //                                                                
                                                //                                                                document.getElementById("imgbtnOrderSend").disabled = false;
                                                //                                                                document.getElementById("imgbtnOrderSend").src = "../image/SaleOrder/chuangsong.png";
                                                //                                                            }

                                                if (document.getElementById("hidSWZCSort").value == "DaBao") {
                                                    var domHtmlObj_DaBao = document.getElementById("A1");
                                                    domHtmlObj_DaBao.disabled = true;
                                                    domHtmlObj_DaBao.src = "../image/SaleOrder/baozhuang-c.png";

                                                    var domHtmlObj_JinJia = document.getElementById("C9");
                                                    if (domHtmlObj_JinJia != null) {
                                                        domHtmlObj_JinJia.disabled = true;
                                                        domHtmlObj_JinJia.src = "../image/SaleOrder/sjfl-e.png";
                                                    }
                                                }
                                                if (document.getElementById("hidSWZCSort").value == "BaoPai") {
                                                    var domHtmlObj_DaBao = document.getElementById("B1");
                                                    domHtmlObj_DaBao.disabled = true;
                                                    domHtmlObj_DaBao.src = "../image/SaleOrder/dabao-c.png";

                                                    var domHtmlObj_JinJia = document.getElementById("C9");
                                                    if (domHtmlObj_JinJia != null) {
                                                        domHtmlObj_JinJia.disabled = true;
                                                        domHtmlObj_JinJia.src = "../image/SaleOrder/sjfl-e.png";
                                                    }
                                                }
                                                if (document.getElementById("hidSWZCSort").value == "JingJia") {
                                                    var domHtmlObj_DaBao = document.getElementById("A1");
                                                    domHtmlObj_DaBao.disabled = true;
                                                    domHtmlObj_DaBao.src = "../image/SaleOrder/baozhuang-c.png";

                                                    var domHtmlObj_DaBao = document.getElementById("B1");
                                                    domHtmlObj_DaBao.disabled = true;
                                                    domHtmlObj_DaBao.src = "../image/SaleOrder/dabao-c.png";
                                                }
                                            });

                                            function CheckForms() {

                                                var isIdCard = true;
                                                var ZhengJiangHao = $("#txtCustZhengJianHao").val();
                                                var ddlZhengJianSort = document.getElementById("ddlCustZhengJianSort");
                                                var ZhengJianSort = ddlZhengJianSort.options[ddlZhengJianSort.selectedIndex].text;
                                                if ((ZhengJianSort == "身份证" || ZhengJianSort == "居民身份证") && ZhengJiangHao != "") {
                                                    isIdCard = isIdCardNo(ZhengJiangHao);
                                                }
                                                if (!isIdCard) {
                                                    return false;
                                                }

                                                if (document.getElementById("ddlSaleQuDao").value == "") {
                                                    alert("销售渠道不能为空！");
                                                    return false;
                                                }
                                                if ($("#ddlSubSaleQuDao option").length > 1 && document.getElementById("ddlSubSaleQuDao").value == "") {
                                                    alert("销售子渠道不能为空");
                                                    return false;
                                                }
                                                if (document.getElementById("txtJBRenName").value.length > 10) {
                                                    alert("经办人姓名不能长于10个字符！");
                                                    return false;
                                                }
                                                if (document.getElementById("hidCheXingID").value == "") {
                                                    alert("请重选车型！");
                                                    return false;
                                                }
                                                if (document.getElementById("hidSWZCSort").value == "") {
                                                    alert("请确定计价类型！");
                                                    return false;
                                                }
                                                if ($('#txtJinPingMingXi').val().lenght > 10 && parseFloat($('#txtJinPingFei').val()) == 0) {
                                                    alert("已选择精品，请输入精品金额！");
                                                    return false;
                                                }

                                                return true;
                                            }
                                            function winopen(url, WinName, w, h, Modal, Shadow, Closed) {
                                                document.getElementById('OrderReviewWin').innerHTML = "<iframe src='" + url + "' srcoll='yes'  style='height:100%;width:100%' frameBorder='0' ></iframe>";
                                                $("#OrderReviewWin").window({
                                                    title: WinName,
                                                    width: w,
                                                    height: h,
                                                    maximizable: false,
                                                    minimizable: false,
                                                    modal: Modal,
                                                    shadow: Shadow,
                                                    closed: Closed
                                                });
                                            }
                                            function winclose() {
                                                $("#OrderReviewWin").window('close');
                                            }
                                            function ibutappraisal_click(IsReviewe) {
                                                var bgouche = $("#hidOrder_YuJiaoCheDate").val() == "";
                                                var bcust = $("#hidOrder_CustMobile").val() == "";
                                                if (bcust && !bgouche) {
                                                    alert("请先完善车主信息再提交审核！");
                                                    return false;
                                                }
                                                if (!bcust && bgouche) {
                                                    alert("请先完善购车预算信息再提交审核！");
                                                    return false;
                                                }
                                                if (bcust && bgouche) {
                                                    alert("请先完善车主信息购车预算再提交审核！");
                                                    return false;
                                                }
                                                var u = "../FlowBusi/flowBusiBegin.aspx?";
                                                u = u + "flowType=SaleOrder"; //流程类型
                                                u = u + "&thisStepId=0"; //当前步骤 代表当前步骤为第一步
                                                u = u + "&flowTitle=(" + encodeURIComponent($("#txtCustName").val()) + ")" + $("#txtOrderNo").val();
                                                u = u + "&busiId=e2d0d606-9016-4ecc-913f-3b5b168e61f5&d=" + new Date();

                                                //弹出对话框

                                                var SizeZ = "dialogWidth:550px;dialogHeight:350px;center:yes;help:no;resizable:no;scroll:no;status:no;";
                                                var returnValue = window.showModalDialog(u, this, SizeZ);

                                                if (returnValue == "1" || returnValue == "2") {


                                                    document.getElementById("iButAppraisal").src = "../image/SaleOrder/dingsheng-b.png";
                                                    $("#btnOrderRefresh").trigger("click");
                                                }

                                                return false;

                                            }

                                            //审核当前单据
                                            function ibtnExamine_click(str) {
                                                var rdStatus = "0"; //1不通过 0通过
                                                var obj = document.getElementsByName("rdlistExamine");
                                                for (var i = 0; i < obj.length; i++) {
                                                    if (obj[i].checked == true) {
                                                        if (obj[i].value == "通过") { rdStatus = "1"; }
                                                    }
                                                }

                                                var href = window.location.href.replace('SaleOrder_InfoNew.aspx', 'SaleOrder_InfoNewExamine.aspx') + "&rdlExamine=" + rdStatus + "&tmp=" + new Date();
                                                $.open({
                                                    id: "openaExamine",
                                                    url: href,
                                                    title: "定单审核",
                                                    width: 600,
                                                    height: 400
                                                });

                                                return false;
                                            }

                                            //提交定单
                                            function submit_order(ExamineResult, strRuturn) {
                                                document.getElementById("hidExamineResult").value = ExamineResult;
                                                document.getElementById("hidExamineDetail").value = strRuturn;
                                                __doPostBack('lbutOrderSend', '');
                                            }

                                            function SendOrder() {
                                                if (!formchecks())
                                                    return false;
                                                __doPostBack('lbutOrderSend', '');
                                            }

                                            function ConfirmSend() {
                                                return confirm("确定将定单传送给财务吗？");
                                            }
                                        </script>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td rowspan="9" colspan="3" align="center">
                            <div class="calculator-backdrop">
                                <table cellpadding="4" cellspacing="5" align="center">
                                    <tr>
                                        <td align="center" style="" colspan="6">
                                            <div class="input-window">
                                                <input name="tbToCount" type="text" value="0" maxlength="10" id="tbToCount" onkeyup="disabledKey(this)" />
                                                <input id="first" type="hidden" value="0" />
                                                <input id="second" type="hidden" value="0" />
                                                <input id="result" type="hidden" value="0" />
                                                <input name="txtZhongJia" type="hidden" id="txtZhongJia" />
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            <input type="image" onmousemove="dot_mouse(this,7,true)" onmouseout="dot_mouse(this,7,false)"
                                                onclick="return dot_number(this,7)" src="../image/SaleOrder/seven.png" style="width: 44px;
                                                height: 32px" />
                                        </td>
                                        <td>
                                            <input type="image" onmousemove="dot_mouse(this,8,true)" onmouseout="dot_mouse(this,8,false)"
                                                onclick="return dot_number(this,8)" src="../image/SaleOrder/eight.png" style="width: 44px;
                                                height: 32px" />
                                        </td>
                                        <td align="right">
                                            <input type="image" onmousemove="dot_mouse(this,9,true)" onmouseout="dot_mouse(this,9,false)"
                                                onclick="return dot_number(this,9)" src="../image/SaleOrder/nine.png" style="width: 44px;
                                                height: 32px" />
                                        </td>
                                        <td align="right" class="jianyi" style="display: none">
                                            <input id="C2" type="image" onmousemove="dot_mouse(this,15,true)" onmouseout="dot_mouse(this,15,false)"
                                                onclick="return dot_number(this,15)" src="../image/SaleOrder/cheng.png" style="width: 44px;
                                                height: 32px" />
                                        </td>
                                        <td class="jianyi" align="right" style="display: none">
                                            <input id="C3" type="image" onmousemove="dot_mouse(this,16,true)" onmouseout="dot_mouse(this,16,false)"
                                                onclick="return dot_number(this,16)" src="../image/SaleOrder/chu.png" style="width: 44px;
                                                height: 32px" />
                                        </td>
                                        <td align="right" class="xiaoshou">
                                            <input id="C8" type="image" onmousemove="dot_mouse(this,11,true)" onmouseout="dot_mouse(this,11,false)"
                                                onclick="salesClass.zuiDiShuiJia_click();return false;" src="../image/SaleOrder/zdsj.png"
                                                style="width: 83px; height: 32px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            <input type="image" onmousemove="dot_mouse(this,4,true)" onmouseout="dot_mouse(this,4,false)"
                                                onclick="return dot_number(this,4)" src="../image/SaleOrder/four.png" style="width: 44px;
                                                height: 32px" />
                                        </td>
                                        <td>
                                            <input type="image" onmousemove="dot_mouse(this,5,true)" onmouseout="dot_mouse(this,5,false)"
                                                onclick="return dot_number(this,5)" src="../image/SaleOrder/five.png" style="width: 44px;
                                                height: 32px" />
                                        </td>
                                        <td align="right">
                                            <input type="image" onmousemove="dot_mouse(this,6,true)" onmouseout="dot_mouse(this,6,false)"
                                                onclick="return dot_number(this,6)" src="../image/SaleOrder/six.png" style="width: 44px;
                                                height: 32px" />
                                        </td>
                                        <td class="jianyi" align="right" style="display: none">
                                            <input id="C4" type="image" onmousemove="dot_mouse(this,17,true)" onmouseout="dot_mouse(this,17,false)"
                                                onclick="return dot_number(this,17)" src="../image/SaleOrder/jia.png" style="width: 44px;
                                                height: 32px" />
                                        </td>
                                        <td class="jianyi" align="right" style="display: none">
                                            <input id="C5" type="image" onmousemove="dot_mouse(this,18,true)" onmouseout="dot_mouse(this,18,false)"
                                                onclick="return dot_number(this,18)" src="../image/SaleOrder/yu.png" style="width: 44px;
                                                height: 32px" />
                                        </td>
                                        <td align="right" class="xiaoshou">
                                            <input id="C9" type="image" onmousemove="dot_mouse(this,12,true)" onmouseout="dot_mouse(this,12,false)"
                                                onclick="salesClass.cheShenJinJia_click();return false;" src="../image/SaleOrder/sjfl.png"
                                                style="width: 83px; height: 32px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            <input type="image" onmousemove="dot_mouse(this,1,true)" onmouseout="dot_mouse(this,1,false)"
                                                onclick="return dot_number(this,1)" src="../image/SaleOrder/one.png" style="width: 44px;
                                                height: 32px" />
                                        </td>
                                        <td>
                                            <input type="image" onmousemove="dot_mouse(this,2,true)" onmouseout="dot_mouse(this,2,false)"
                                                onclick="return dot_number(this,2)" src="../image/SaleOrder/two.png" style="width: 44px;
                                                height: 32px" />
                                        </td>
                                        <td align="right">
                                            <input type="image" onmousemove="dot_mouse(this,3,true)" onmouseout="dot_mouse(this,3,false)"
                                                onclick="return dot_number(this,3)" src="../image/SaleOrder/three.png" style="width: 44px;
                                                height: 32px" />
                                        </td>
                                        <td class="jianyi" align="right" style="display: none">
                                            <input id="C6" type="image" onmousemove="dot_mouse(this,19,true)" onmouseout="dot_mouse(this,19,false)"
                                                onclick="return dot_number(this,19)" src="../image/SaleOrder/jian.png" style="width: 44px;
                                                height: 32px" />
                                        </td>
                                        <td rowspan="2" class="jianyi" align="right" style="display: none">
                                            <div>
                                                <input id="C7" type="image" onmousemove="dot_mouse(this,25,true)" onmouseout="dot_mouse(this,25,false)"
                                                    onclick="return dot_number(this,25)" src="../image/SaleOrder/dengyu.png" style="width: 44px;
                                                    height: 69px" /></div>
                                        </td>
                                        <td align="right" class="xiaoshou">
                                            <input id="C10" type="image" onmousemove="dot_mouse(this,13,true)" onmouseout="dot_mouse(this,13,false)"
                                                onclick="salesClass.shangYeXian_Click(); return false;" src="../image/SaleOrder/syx.png"
                                                style="width: 83px; height: 32px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            <input type="image" onmousemove="dot_mouse(this,0,true)" onmouseout="dot_mouse(this,0,false)"
                                                onclick="return dot_number(this,0)" src="../image/SaleOrder/zero.png" style="width: 44px;
                                                height: 32px" />
                                        </td>
                                        <td>
                                            <input type="image" onmousemove="dot_mouse(this,10,true)" onmouseout="dot_mouse(this,10,false)"
                                                onclick="return dot_number(this,10)" src="../image/SaleOrder/dot.png" style="width: 44px;
                                                height: 32px" />
                                        </td>
                                        <td align="right">
                                            <input type="image" onmousemove="dot_mouse(this,-1,true)" onmouseout="dot_mouse(this,-1,false)"
                                                onclick="return dot_number(this,-1)" src="../image/SaleOrder/backspace.png" style="width: 44px;
                                                height: 32px" />
                                        </td>
                                        <td class="jianyi" align="right" style="display: none">
                                            <input type="image" onmousemove="dot_mouse(this,24,true)" onmouseout="dot_mouse(this,24,false)"
                                                onclick="return dot_number(this,24)" src="../image/SaleOrder/c.png" style="width: 44px;
                                                height: 32px" />
                                        </td>
                                        <td align="right" class="xiaoshou">
                                            <input id="C11" type="image" onmousemove="dot_mouse(this,14,true)" onmouseout="dot_mouse(this,14,false)"
                                                onclick="salesClass.jinPingFei_Click();return false;" src="../image/SaleOrder/jpf.png"
                                                style="width: 83px; height: 32px" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap" rowspan="3" width="76px" align="center" valign="middle">
                            <img alt="" src="../image/SaleOrder/jishuan.png" style="width: 45px; height: 45px" />
                        </td>
                        <td nowrap="nowrap" style="width: 76px; text-align: right;" onmousemove="if(window.event.ctrlKey){ ShowTitle(document.getElementById('hidZuiDiGouZhiShui').value); }"
                            onmouseout="HiddenTitle();">
                            商 业&nbsp; 险：
                        </td>
                        <td nowrap="nowrap" style="height: 28px;">
                            <input name="txtShangYeXian" type="text" value="0.00" maxlength="10" id="txtShangYeXian" onfocus="window.focus()" style="width:150px;text-align: right" />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right;">
                            交 强&nbsp; 险：
                        </td>
                        <td align="left" style="height: 28px;">
                            <div>
                                <table cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td align="left" style="width: 30px;">
                                            <input id="chkJiaoQianXian" type="checkbox" name="chkJiaoQianXian" checked="checked" onclick="salesClass.isJiaoQiangXian_click(this);" />
                                        </td>
                                        <td>
                                            <div id="upJiaoQiangXian">
    
                                                    <input name="txtJiaoQiangXian" type="text" value="950.00" maxlength="10" id="txtJiaoQiangXian" onchange="this.value = toDecimal(this.value)" onkeyup="salesClass.jiaoQiangXian_Click(this);" style="width:120px;text-align: right;" />
                                                
</div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap" style="width: 76px; text-align: right;" onmouseout="HiddenTitle();"
                            onmousemove="if(window.event.ctrlKey){ ShowTitle(document.getElementById('txtJinPingChengBen').value+'#'+document.getElementById('hiddJPCostPrice').value+'#'+ document.getElementById('txtJinPingLiRun').value);}">
                            精&nbsp;品&nbsp;&nbsp;费：
                        </td>
                        <td style="height: 28px;">
                            <div>
                                <table cellpadding="0" cellspacing="0" width="100%">
                                    <tr>
                                        <td align="left" style="width: 30px">
                                            <input id="jinPing" onclick="salesClass.jingPin_click();return false" src="../image/SaleOrder/jishuan.png"
                                                style="height: 22px; width: 22px" type="image" />
                                            <input name="Hidden1" type="hidden" id="Hidden1" />
                                            
                                            <input name="Hidden2" type="hidden" id="Hidden2" />
                                            
                                            <input name="Hidden3" type="hidden" id="Hidden3" />
                                            
                                            <input name="Hidden4" type="hidden" id="Hidden4" />
                                            
                                            <input name="Hidden5" type="hidden" id="Hidden5" />
                                            
                                        </td>
                                        <td>
                                            <input name="txtJinPingFei" type="text" value="0.00" id="txtJinPingFei" onfocus="window.focus()" style="width:120px;text-align: right" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="3" valign="bottom" align="center">
                            <input id="yufu" onclick="return false" type="image" src="../image/SaleOrder/goucheyushuan.png"
                                style="width: 45px; height: 45px" />
                        </td>
                        <td nowrap="nowrap" style="width: 76px; text-align: right;">
                            车&nbsp;船&nbsp;&nbsp;税：
                        </td>
                        <td align="left" style="height: 28px;">
                            <div>
                                <table cellpadding="0" cellspacing="0" width="100%">
                                    <tr>
                                        <td align="left" style="width: 30px;">
                                            <input name="chkCheChuanShui" type="checkbox" id="chkCheChuanShui" onclick="salesClass.isCheChuanShui_click(this);" checked="checked" />
                                        </td>
                                        <td>
                                            <input name="txtCheChuanShui" type="text" value="300.00" maxlength="8" id="txtCheChuanShui" onchange="this.value = toDecimal(this.value)" onkeyup="salesClass.cheChuanShui_click(this);" style="width:120px;text-align: right" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap" style="width: 76px; text-align: right;" onmouseout="HiddenTitle();"
                            onmousemove="if(window.event.ctrlKey){ ShowTitle(document.getElementById('txtJinPingChengBen').value+'#'+ document.getElementById('txtJinPingLiRun').value);}">
                            铁 牌&nbsp; 费：
                        </td>
                        <td nowrap="nowrap" style="height: 28px;">
                            <div>
                                <table cellpadding="0" cellspacing="0" width="100%">
                                    <tr>
                                        <td align="left" style="width: 30px;">
                                            <span style="display:inline-block;width:20px;"><label for="chkTiePaiFei"> </label><input id="chkTiePaiFei" type="checkbox" name="chkTiePaiFei" checked="checked" onclick="salesClass.isTiePaiFei_click(this);" /></span>
                                        </td>
                                        <td>
                                            <div id="upTiePai">
    
                                                    <input name="txtTiePaiFei" type="text" value="500.00" id="txtTiePaiFei" onchange="this.value = toDecimal(this.value)" onkeyup="salesClass.tiePaiFei_click(this);" style="width:120px;text-align: right" />
                                                
</div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap" style="width: 76px; text-align: right;">
                            延 保&nbsp; 费：
                        </td>
                        <td nowrap="nowrap" style="height: 28px;">
                            <input name="txtYanBaoFei" type="text" value="0.00" id="txtYanBaoFei" onchange="this.value = toDecimal(this.value)" onkeyup="salesClass.YanBao_keyUp(this);" style="width:150px;text-align: right" />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center;">
                            购车预算
                        </td>
                        <td nowrap="nowrap" style="width: 76px; text-align: right;">
                            按揭手续：
                        </td>
                        <td nowrap="nowrap" style="height: 28px;">
                            <input name="txtAnjieFei" type="text" value="0.00" id="txtAnjieFei" onchange="this.value = toDecimal(this.value)" onkeyup="salesClass.AnJie_keyUp(this);" style="width:150px;text-align: right" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                        </td>
                        <td nowrap="nowrap" style="width: 76px; text-align: right;">
                            特别规格：
                        </td>
                        <td nowrap="nowrap" style="height: 28px;">
                            <input name="txtTeBieGuiGe" type="text" value="0.00" id="txtTeBieGuiGe" onkeyup="salesClass.tieBieGuiGeFei_keyUp(this);" onchange="this.value = toDecimal(this.value);" style="width:150px;text-align: right" />
                            <a id="lbutOrderSend" href="javascript:__doPostBack('lbutOrderSend','')"></a>
                            <input type="submit" name="btnOrderRefresh" value="" id="btnOrderRefresh" style="display: none" />
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
    </table>
    <script language="javascript" type="text/javascript">


        var heightForIE = 0;
        if (navigator.userAgent.indexOf("MSIE 6.0") > 0)
            heightForIE = 50;

        function ClearCustId() {
            $('#hidCustGuid').val("");
        }

        function CountExits() {
            var strReturn = "";
            var strPhone = $('#txtJBRenMobile').val();
            $.post("../SaleOrder_Manage/ashx/GetAcardByMoblie.ashx", { CustMobile: strPhone, time: new Date() },
        function (data) {
            strReturn = $.parseJSON(data);
            if (strReturn != null) {


                if (confirm("该移动电话(" + strPhone + ")为" + strReturn.SalorName + "客户，当前" + strReturn.BillStatus + ",是否导入该客户ID以便更新A卡信息？")) {
                    $('#hidCustGuid').val(strReturn.CustGuid);
                    alert('已导入A卡客户ID,此客户A卡信息将随着定单完成后更改为"已成交!"');
                }
            }

        });

        }

        function ShowCarJingPinYZ_Mag() {
            var strCheXingDaiMa = $('#ddlCarCheXingDaiMa').find("option:selected").text();
            var strCarColor = $('#ddlCarColor').find("option:selected").text();
            if (strCheXingDaiMa == "" || strCarColor == "") {
                alert("车型代码或车身颜色不能为空！");
                return false;
            }
            var href = "../SaleOrder_Manage/CarJingPinYZ.aspx?CXDM=" + strCheXingDaiMa + "&CarColor=" + strCarColor;
            href = encodeURI(href);
            var SizeZ = "dialogWidth:900px;dialogHeight:" + (620 + heightForIE) + "px;center:yes;edge:sunken;help:no;resizable:no;scroll:no;status:no;";
            var valReturn = window.showModalDialog(href, window, SizeZ);
            //            if (valReturn != undefined && valReturn.length > 0) {
            //                arrCarDetail = valReturn.split("*$");

            //                document.getElementById("txtCarCheLiangBianHao").value = arrCarDetail[0] == "&nbsp;" ? "" : arrCarDetail[0]; //
            //                document.getElementById("txtCarCheJiaHao").value = arrCarDetail[1] == "&nbsp;" ? "" : arrCarDetail[1]; //
            //                document.getElementById("hidVirtualOrderID").value = arrCarDetail[2] == "&nbsp;" ? "" : arrCarDetail[2]; //
            //                document.getElementById("txtJinPingMingXi").value = arrCarDetail[3] == "&nbsp;" ? "" : arrCarDetail[3]; //
            //                document.getElementById("txtWangDian").value = arrCarDetail[4] == "&nbsp;" ? "" : arrCarDetail[4]; //
            //                document.getElementById("hidCarId").value = arrCarDetail[5] == "&nbsp;" ? "" : arrCarDetail[5]; //
            //                document.getElementById("hidYZJingPinQty").value = arrCarDetail[6] == "&nbsp;" ? "" : arrCarDetail[6]; //
            //            }
            $("#hidCarId").val(valReturn);

            return false;
        }

        function ShowCarJingPin() {
            var OrderID = document.getElementById("hidOrderID").value;
            if (OrderID == "") {
                alert("请选择定单!");
                return false;
            }
            var href = "OrderJingPinDetail.aspx?OrderID=" + OrderID + "&&d=" + new Date();
            var SizeZ = "dialogWidth:900px;dialogHeight:" + (560 + heightForIE) + "px;center:yes;edge:sunken;help:no;resizable:no;scroll:no;status:no;";
            var returnValue = window.showModalDialog(href, '', SizeZ);
            return false;
        }

        function showExaInfo() {
            var OrderID = document.getElementById("hidOrderID").value;
            if (OrderID == "") {
                alert("请选择定单!");
                return false;
            }
            var href = "saleOrder_AuditInfo.aspx?strOrderId=" + OrderID;
            var SizeZ = "dialogWidth:850px;dialogHeight:" + (650 + heightForIE) + "px;center:yes;edge:sunken;help:no;resizable:no;scroll:no;status:no;";
            var returnValue = window.showModalDialog(href, 'ex', SizeZ);
            return false;
        }
    </script>
    <script type="text/javascript">

        var historyClass = { A: 0, B: 0, C: 0, D: 0, E: 0, F: 0, Fa: 0, Fb: 0, G: 0, H: 0, I: 0, J: 0, Z: 0 };
        var salesClass = {
            A: 0,   //车身价格
            Aa: 0,   //最低车身价格
            B: 0,   //购置税
            Ba: 0,  //最低购置税
            C: 0,   //保单金额
            D: 0,   //商业险
            E: 0,   //交强险
            F: 0,   //精品费
            Fa: 0,  //精品成本
            Fb: 0,  //精品销售
            G: 0,   //车船税
            H: 0,   //铁牌费
            I: 0,   //特别规格费
            J: 0,   //其他一
            J2: 0,   //其他二
            Z: 0,   //定单总价
            oZ: 0,  //计价总价
            AnJie: 0, //按揭费
            YanBao: 0, //延保费
            tempValue: 0,    //动态临时值
            salesType: 0,   //1:打包计价,2:包牌计价,3:最低税价,4:车身净价
            thisType: 0,    //1:精品+,2:商业险,
            init: function () {
                this.A = Number(toDecimal(document.getElementById("txtCheShenJiaGe").value));
                this.Aa = Number(toDecimal(document.getElementById("hidCheShenJiaGe").value));
                this.B = Number(toDecimal(document.getElementById("txtGouZhiShui").value));
                this.Ba = Number(toDecimal(document.getElementById("hidZuiDiGouZhiShui").value));
                this.D = Number(toDecimal(document.getElementById("txtShangYeXian").value));
                this.E = Number(toDecimal(document.getElementById("txtJiaoQiangXian").value));
                this.F = Number(toDecimal(document.getElementById("txtJinPingFei").value));
                this.Fa = Number(toDecimal(document.getElementById("txtJinPingChengBen").value));
                this.Fb = Number(toDecimal(document.getElementById("txtJinPingLiRun").value));
                this.G = Number(toDecimal(document.getElementById("txtCheChuanShui").value));
                this.H = Number(toDecimal(document.getElementById("txtTiePaiFei").value));
                this.I = Number(toDecimal(document.getElementById("txtTeBieGuiGe").value));
                this.J = Number(toDecimal(document.getElementById("txtQiTa").value));
                this.J2 = Number(toDecimal(document.getElementById("txtQiTa2").value));
                this.AnJie = Number(toDecimal(document.getElementById("txtAnjieFei").value));
                this.YanBao = Number(toDecimal(document.getElementById("txtYanBaoFei").value));

                this.C = this.D + this.E;
            },
            setResult: function (p) {
                //返回页面值

                switch (this.salesType) {
                    case 1:
                        //20140530
                        if ((p == "D" || p == "E" || p == "F" || p == "J" || p == "I" || p == "G" || p == "H" || p == "J2" || p == "AnJie" || p == "YanBao"
                          ) && this.thisType == 1) {
                            break;
                        }   //不计算车身和购置税

                        //  var saleValue = Number(this.oZ - this.C - this.F - this.J); //不包含特别规格费 this.I
                        //20140530 车船税从保单中分离
                        var saleValue = Number(this.oZ - this.C - this.F - this.J - this.G); //不包含特别规格费 this.I
                        this.B = saleValue / 12.7;
                        this.A = (this.I > 0) ? saleValue - this.B - this.I : saleValue - this.B;
                        if (this.B < this.Ba) {
                            this.B = this.Ba;
                            this.A = (this.I > 0) ? saleValue - this.B - this.I : saleValue - this.B;
                        } //当[购置税]小于[最低购置税]

                        break;
                    case 2:
                        if (this.thisType == 1) {
                            break;
                        }   //不计算车身和购置税

                        this.B = this.oZ / 12.7;
                        this.A = (this.I > 0) ? this.oZ - this.B - this.I : this.oZ - this.B;
                        if (this.B < this.Ba) {
                            this.B = this.Ba;
                            this.A = (this.I > 0) ? this.oZ - this.B - this.I : this.oZ - this.B;
                        } //当[购置税]小于[最低购置税]
                        break;
                    case 4:
                        this.A = this.oZ;
                        break;
                    default:
                        break;
                }

                if (this.B > parseInt(this.B)) {
                    var un = parseInt(this.B) - this.B;
                    this.A = this.A - un;
                    this.B = this.B + un;
                }
                //                alert(this.oZ + ":" + this.A + ":" + this.B + ":" +this.I+":"+p);
                //                alert($('#txtCheShenJiaGe').val()+":"+$('#txtTeBieGuiGe').val()+":"+$('#txtGouZhiShui').val());
                if (this.salesType != '4' && (this.A + this.I) / 11.7 - this.B > 1 && p != "I") {
                    //                    if ($('#txtCheShenJiaGe').val() == "") {
                    //                        alert(this.A.toString() + "::" + $('#txtCheShenJiaGe').val() + "::" + p.toString());
                    alert("为确保购置税和车身价成比例，车身价自动-1。如欲总价不变，请于其它明细项中+1！");
                    this.A = this.A - 1;
                    this.oZ = this.oZ - 1;
                    //                    }
                    //                    if(this.C+this.F+this.G+this.H+this.J!=0)
                    //                        this.A = this.A - 1;
                    //                    this.thisType = 1;
                }

                if (this.thisType == 1) {
                    switch (p) {
                        case "A":
                            break;
                        case "B":
                            break;
                        case "C":
                            break;
                        case "D":
                            this.Z = this.Z - this.tempValue + this.D;
                            break;
                        case "E":
                            this.Z = this.Z - this.tempValue + this.E;
                            break;
                        case "G":
                            // this.Z = this.Z - this.tempValue + this.C;
                            //20140530 车船税从保单分离
                            this.Z = this.Z - this.tempValue + this.G;
                            break;
                        case "F":
                            this.Z = this.Z - this.tempValue + this.F;
                            break;
                        case "H":
                            this.Z = this.Z - this.tempValue + this.H;
                            break;
                        case "I":
                            //this.Z = this.Z - this.tempValue + this.I;
                            if (this.salesType == 4)
                                this.A = this.A - this.I;
                            else
                                this.A = this.A + this.tempValue - this.I;
                            document.getElementById("txtCheShenJiaGe").value = toDecimal(this.A).toString();
                            break;
                        case "J":
                            this.Z = this.Z - this.tempValue + this.J;
                            break;
                        case "J2":
                            this.Z = this.Z - this.tempValue + this.J2;
                            break;
                        case "AnJie":
                            this.Z = this.Z - this.tempValue + this.AnJie;
                            break;
                        case "YanBao":
                            this.Z = this.Z - this.tempValue + this.YanBao;
                            break;
                    }
                }
                else {
                    //  this.Z = this.A + this.B + this.C + this.F + this.H + this.I + this.J + this.J2 + this.AnJie + this.YanBao;
                    //20140530
                    this.Z = this.A + this.B + this.C + this.G + this.F + this.H + this.I + this.J + this.J2 + this.AnJie + this.YanBao;
                }

                if (p != "A" && this.thisType == 0)
                    document.getElementById("txtCheShenJiaGe").value = toDecimal(this.A).toString();
                if (p != "B" && this.thisType == 0) document.getElementById("txtGouZhiShui").value = toDecimal(this.B).toString();
                if (p != "C") document.getElementById("txtBaoDanJine").value = toDecimal(this.C).toString();
                document.getElementById("txtShangYeXian").value = toDecimal(this.D).toString();
                if (p != "E") document.getElementById("txtJiaoQiangXian").value = toDecimal(this.E).toString();
                document.getElementById("txtJinPingFei").value = toDecimal(this.F).toString();
                if (p != "G") document.getElementById("txtCheChuanShui").value = toDecimal(this.G).toString();
                if (p != "H") document.getElementById("txtTiePaiFei").value = toDecimal(this.H).toString();
                if (p != "I") document.getElementById("txtTeBieGuiGe").value = toDecimal(this.I).toString();
                if (p != "J") $("#txtQiTa").val(toDecimal(this.J).toString()); // document.getElementById("txtQiTa").value = ;
                if (p != "Z") document.getElementById("txtDingDanZhonge").value = toDecimal(this.Z).toString();
                //                alert(this.A.toString());
            },
            getValue: function () {
                var tempValeu = Number(this.toDecimal(document.getElementById("tbToCount").value));
                document.getElementById("tbToCount").value = "0";
                return tempValeu;
            },
            getTotalPrices: function () {
                return Number(this.toDecimal(document.getElementById("txtDingDanZhonge").value));
            },
            setTotalPrices: function (value) {
                document.getElementById("txtDingDanZhonge").value = Number(this.toDecimal(value));
            },
            getJinPin: function () {
                return Number(this.toDecimal(document.getElementById("txtJinPingFei").value));
            },
            setJinPin: function (value) {
                document.getElementById("txtJinPingFei").value = value;
            },
            getShangYeXian: function () {
                return Number(this.toDecimal(document.getElementById("txtShangYeXian").value));
            },
            setShangYeXian: function (value) {
                document.getElementById("txtShangYeXian").value = value;
            },
            toDecimal: function (x) {
                //精确两位小数
                if (x == "")
                    x = 0;
                var f = parseFloat(x);
                if (isNaN(f)) {
                    return false;
                }
                var f = Math.round(x * 100) / 100;
                var s = f.toString();
                var rs = s.indexOf('.');
                if (rs < 0) {
                    rs = s.length;
                    s += '.';
                }
                while (s.length <= rs + 2) {
                    s += '0';
                }
                return Number(s);
            },
            getBaoDanJin_e: function () {
                //计算保单金额
                //this.C = this.D + this.E + this.G;
                this.C = this.D + this.E; //+ this.G;
                //20140530 车船税不再计入保单金额
            },
            shangYeXian_Click: function () {
                //[商业险]
                if (this.thisType == 1) {
                    this.tempValue = this.D;
                    this.D += this.getValue();
                    this.getBaoDanJin_e();
                    this.setResult("D");
                    if (this.getJinPin() == 0 && this.A == 0)
                        this.setJinPin(""); //提示输入精品
                    return;
                }   //第二次改变精品
                this.D += this.getValue();
                this.getBaoDanJin_e();
                this.setResult(0);
                if (this.getJinPin() == 0 && this.thisType == 0)
                    this.setJinPin(""); //提示输入精品
            },
            jinPingFei_Click: function () {
                // alert("请在精品明细里调整精品费");
                // return;
                //精品费
                this.tempValue = this.F;
                var temp_Value = this.getValue();
                if ((temp_Value + this.F) <= this.Fa) {
                    this.F = this.Fa;
                }   //精品费 <= 成本
                else if ((temp_Value + this.F) >= this.Fb) {
                    this.F = this.Fb;
                }   //精品费 >= 销售价
                else
                    this.F += temp_Value;

                if (this.thisType == 1)
                    this.setResult("F");
                else
                    this.setResult(0);
            },
            jiaoQiangXian_Click: function (dHobj) {
                //交强险
                if (this.A == 0 && this.thisType == 0) {
                    if (this.D == 0) this.setShangYeXian("");
                    if (this.F == 0) this.setJinPin("");
                }   //初始化[商业险]和[精品费]

                if (this.salesType > 0)
                    this.thisType = 1;

                this.tempValue = this.E;
                this.E = Number(dHobj.value);
                this.getBaoDanJin_e();
                this.setResult("E");
            },
            isJiaoQiangXian_click: function (dHobj) {
                //是否开启[交强险]

                if (this.A == 0 && this.thisType == 0) {
                    if (this.D == 0) this.setShangYeXian("");
                    if (this.F == 0) this.setJinPin("");
                }   //初始化[商业险]和[精品费]

                var tempDomHtmlObj = document.getElementById("txtJiaoQiangXian");
                this.tempValue = this.E;
                if (dHobj.checked) {
                    tempDomHtmlObj.disabled = false;
                    this.E = Number(dHobj.title);
                    if (this.thisType == 1) document.getElementById("txtJiaoQiangXian").value = toDecimal(this.E).toString();
                }   //开启交强险
                else {
                    dHobj.title = tempDomHtmlObj.value;
                    tempDomHtmlObj.disabled = true;
                    this.E = 0;
                    if (this.thisType == 1) document.getElementById("txtJiaoQiangXian").value = toDecimal(this.E).toString();
                }   //关闭交强险

                if (this.salesType > 0)
                    this.thisType = 1;

                this.getBaoDanJin_e();
                if (this.thisType == 1)
                    this.setResult("E");
                else
                    this.setResult(0);
            },
            cheChuanShui_click: function (dHobj) {
                //[车船税]
                if (this.A == 0 && this.thisType == 0) {
                    if (this.D == 0) this.setShangYeXian("");
                    if (this.F == 0) this.setJinPin("");
                }   //初始化[商业险]和[精品费]

                if (this.salesType > 0)
                    this.thisType = 1;


                //this.tempValue = this.C;
                this.tempValue = this.G;
                this.G = Number(dHobj.value);
                //20140530 车船税不再计入保单金额 韦明锐
                this.getBaoDanJin_e();
                this.setResult("G");

            },
            isCheChuanShui_click: function (dHobj) {
                var strPaiLiang = $('#hidCarPaiLiang').val();
                var arrStr = strPaiLiang.split('.');
                var decCheChuang = 0;
                if (arrStr.length == 2) {
                    var flPL = parseFloat(arrStr[0].substr(arrStr[0].length - 1, 1) + "." + arrStr[1].substr(0, 1));
                    if (flPL <= 1.0)
                        decCheChuang = 180;
                    if (flPL > 1.0 && flPL <= 1.6)
                        decCheChuang = 360;
                    if (flPL > 1.6 && flPL <= 2.0)
                        decCheChuang = 420;
                    if (flPL > 2.0 && flPL <= 2.5)
                        decCheChuang = 720;
                    if (flPL > 2.5 && flPL <= 3.0)
                        decCheChuang = 1800;
                    if (flPL > 3.0 && flPL <= 4.0)
                        decCheChuang = 3000;
                    if (flPL > 4.0)
                        decCheChuang = 4500;
                    if ($('#ddlCarCheXi').val() == "柯斯达" || $('#ddlCarCheXi').val() == "中巴")
                        decCheChuang = 600;
                    var CurDate = new Date();
                    //                    alert(CurDate.getMonth().toString());
                    dHobj.title = decCheChuang * (12 - CurDate.getMonth()) / 12;
                }
                else {
                    dHobj.title = 0;
                    alert("该车型没有排量信息或排量信息格式不正确，请车型设置里排量，格式如 2.0L！");
                }


                //是否开启[车船税]
                if (this.A == 0) {
                    if (this.D == 0) this.setShangYeXian("");
                    if (this.F == 0) this.setJinPin("");
                }   //初始化[商业险]和[精品费]
                var tempDomHtmlObj = document.getElementById("txtCheChuanShui");
                this.tempValue = this.G;
                if (dHobj.checked) {
                    tempDomHtmlObj.disabled = false;
                    this.G = Number(dHobj.title);
                    if (this.thisType == 1) document.getElementById("txtCheChuanShui").value = toDecimal(this.G).toString();
                }
                else {
                    dHobj.title = tempDomHtmlObj.value;
                    tempDomHtmlObj.disabled = true;
                    this.G = 0;
                    if (this.thisType == 1) document.getElementById("txtCheChuanShui").value = toDecimal(this.G).toString();
                }

                if (this.salesType > 0)
                    this.thisType = 1;

                this.getBaoDanJin_e();
                if (this.thisType == 1)
                    this.setResult("G");
                else
                    this.setResult(0);
            },
            tiePaiFei_click: function (dHobj) {
                //输入[铁牌费]
                if (this.A == 0 && this.thisType == 0) {
                    if (this.D == 0) this.setShangYeXian("");
                    if (this.F == 0) this.setJinPin("");
                }   //初始化[商业险]和[精品费]

                if (this.salesType > 0)
                    this.thisType = 1;

                this.tempValue = this.H;
                this.H = Number(dHobj.value);
                this.setResult("H");
            },
            isTiePaiFei_click: function (dHobj) {
                //是否开启[铁牌费]
                if (this.A == 0 && this.thisType == 0) {
                    if (this.D == 0) this.setShangYeXian("");
                    if (this.F == 0) this.setJinPin("");
                }   //初始化[商业险]和[精品费]

                var tempDomHtmlObj = document.getElementById("txtTiePaiFei");
                this.tempValue = this.H;

                if (dHobj.checked) {
                    tempDomHtmlObj.disabled = false;
                    this.H = Number(dHobj.title);
                    if (this.thisType == 1)
                        document.getElementById("txtTiePaiFei").value = toDecimal(this.H).toString();
                }
                else {
                    dHobj.title = tempDomHtmlObj.value;
                    tempDomHtmlObj.disabled = true;
                    this.H = 0;
                    if (this.thisType == 1)
                        document.getElementById("txtTiePaiFei").value = toDecimal(this.H).toString();
                }

                if (this.salesType > 0)
                    this.thisType = 1;

                if (this.thisType == 1)
                    this.setResult("H");
                else
                    this.setResult(0);


            },
            tieBieGuiGeFei_keyUp: function (dHobj) {
                //输入[特别规格费]
                if (this.A == 0 && this.thisType == 0) {
                    if (this.D == 0) this.setShangYeXian("");
                    if (this.F == 0) this.setJinPin("");
                }   //初始化[商业险]和[精品费]

                if (this.salesType > 0)
                    this.thisType = 1;

                this.tempValue = this.I;
                this.I = Number(dHobj.value);
                this.setResult("I");
            },
            qiTa_keyUp: function (dHobj) {
                //输入[其他]
                if (dHobj.id == "") { }
                if (this.A == 0 && this.thisType == 0) {
                    if (this.D == 0) this.setShangYeXian("");
                    if (this.F == 0) this.setJinPin("");
                }   //初始化[商业险]和[精品费]

                if (this.salesType > 0) {
                    // this.thisType = 1;
                }

                this.tempValue = this.J
                this.J = Number(dHobj.value);
                this.setResult("J");
            },
            qiTa2_keyUp: function (dHobj) {

                this.tempValue = this.J2;
                this.J2 = Number(dHobj.value);
                this.setResult("J2");
            },
            AnJie_keyUp: function (dHobj) {

                this.tempValue = this.AnJie
                this.AnJie = Number(dHobj.value);
                this.setResult("AnJie");
            },
            YanBao_keyUp: function (dHobj) {

                this.tempValue = this.YanBao
                this.YanBao = Number(dHobj.value);
                this.setResult("YanBao");
            },
            daBaoJiJiaQi_click: function () {
                //点击[打包计价器]
                document.getElementById("hidSWZCSort").value = "DaBao";
                if (this.D == "") {
                    showError("请输入[商业险]。");
                    // $.error("请输入[商业险]。", "新车销售定单管理")

                    return;
                }

                if (this.F < this.Fa || document.getElementById("txtJinPingFei").value == "") {
                    showError("请输入[精品费]。");
                    //$.error("请输入[精品费]。", "新车销售定单管理");
                    return;
                }
                var tempGetValue = this.getValue();
                if (tempGetValue <= 0) {
                    showError("请输入有效的[打包金额]。");
                    // $.error("请输入有效的[打包金额]。", "新车销售定单管理");
                    return;
                }

                this.oZ = tempGetValue - this.AnJie - this.YanBao - this.J2;
                this.salesType = 1;
                this.thisType = 0;
                this.setResult(this.thisType);
                this.thisType = 1;
                var domHtmlObj_DaBao = document.getElementById("A1");
                domHtmlObj_DaBao.disabled = true;
                domHtmlObj_DaBao.src = "../image/SaleOrder/baozhuang-c.png";

                var domHtmlObj_JinJia = document.getElementById("C9");
                if (domHtmlObj_JinJia != null) {

                    domHtmlObj_JinJia.disabled = true;
                    domHtmlObj_JinJia.src = "../image/SaleOrder/sjfl-e.png";
                }
            },
            baoPaiJiJiaQi_click: function () {
                //点击[包牌计价器]

                document.getElementById("hidSWZCSort").value = "BaoPai";
                var tempGetValeu = this.getValue();
                if (tempGetValeu <= 0) {
                    // $.error("请输入有效的[包牌金额]。", "新车销售定单管理");
                    showError("请输入有效的[包牌金额]。");
                    return;
                }

                this.thisType = 0;
                this.oZ = tempGetValeu;
                this.salesType = 2;

                this.setResult(0);

                var domHtmlObj_DaBao = document.getElementById("B1");
                domHtmlObj_DaBao.disabled = true;
                domHtmlObj_DaBao.src = "../image/SaleOrder/dabao-c.png";

                var domHtmlObj_JinJia = document.getElementById("C9");
                if (domHtmlObj_JinJia != null) {
                    domHtmlObj_JinJia.disabled = true;
                    domHtmlObj_JinJia.src = "../image/SaleOrder/sjfl-e.png";
                }

            },
            cheShenJinJia_click: function () {
                //车身净价
                document.getElementById("hidSWZCSort").value = "JingJia";
                this.oZ = this.getValue();
                if (this.oZ <= 0) {
                    // $.error("请输入有效的[净价金额]。", "新车销售定单管理");
                    showError("请输入有效的[净价金额]");
                    return;
                }

                this.salesType = 4;
                this.setResult(0);

                var domHtmlObj_DaBao = document.getElementById("A1");
                domHtmlObj_DaBao.disabled = true;
                domHtmlObj_DaBao.src = "../image/SaleOrder/baozhuang-c.png";

                var domHtmlObj_DaBao = document.getElementById("B1");
                domHtmlObj_DaBao.disabled = true;
                domHtmlObj_DaBao.src = "../image/SaleOrder/dabao-c.png";
            },
            zuiDiShuiJia_click: function () {
                if (this.B > this.Ba) {
                    // this.salesType = 3;
                    //this.setResult(3);

                    var _Z = this.A + this.B + this.I;
                    this.A = this.Aa - this.I;
                    this.B = this.Ba;
                    this.J += (_Z - (this.A + this.I + this.B));
                    document.getElementById("txtCheShenJiaGe").value = toDecimal(this.A).toString();
                    document.getElementById("txtGouZhiShui").value = toDecimal(this.B).toString();
                    //  document.getElementById("txtQiTa").value
                    $("#txtQiTa").val(toDecimal(this.J).toString());

                }
            },
            removeAllValue: function () {
                document.getElementById("hidSWZCSort").value = "";
                this.A = 0;
                this.B = 0;
                this.C = 0;
                this.D = 0;
                //this.E = 0;
                this.F = 0;
                //this.G = 0;
                //this.H = 0;
                this.I = 0;
                this.J = 0;
                this.YanBao = 0;
                this.AnJie = 0;
                this.J2 = 0;
                this.Z = 0;
                this.oZ = 0;
                $("#txtAnjieFei,#txtYanBaoFei,#txtQiTa2").val("0");
                this.salesType = 0;
                this.thisType = 0;
                var domJiaoQiangXian = document.getElementById("chkJiaoQianXian");
                if (domJiaoQiangXian.checked) {
                    domJiaoQiangXian.checked = false
                    this.isJiaoQiangXian_click(domJiaoQiangXian);
                }   //关闭交强险

                var domCheChuanShui = document.getElementById("chkCheChuanShui");
                if (domCheChuanShui.checked) {
                    domCheChuanShui.checked = false;
                    this.isCheChuanShui_click(domCheChuanShui);
                }   //关闭车船税

                var domTiePaiFei = document.getElementById("chkTiePaiFei");
                if (domTiePaiFei.checked) {
                    domTiePaiFei.checked = false;
                    this.isTiePaiFei_click(domTiePaiFei);
                }   //关闭车船税

                var domHtmlObj_DaBao = document.getElementById("A1");
                domHtmlObj_DaBao.disabled = false;
                domHtmlObj_DaBao.src = "../image/SaleOrder/baozhuang.png";
                var domHtmlObj_DaBao = document.getElementById("B1");
                domHtmlObj_DaBao.disabled = false;
                domHtmlObj_DaBao.src = "../image/SaleOrder/dabao.png";
                var domHtmlObj_JinJia = document.getElementById("C9");
                domHtmlObj_JinJia.disabled = false;
                //if (domHtmlObj_JinJia != null) {
                //  domHtmlObj_JinJia.disabled = true;
                //  domHtmlObj_JinJia.src = "../image/SaleOrder/sjfl.png";
                // }

                this.setResult(0);
                this.setJinPin("");
                this.setShangYeXian("");
            },
            calculator: function (dHobj) {
                if (dHobj.alt == "标准型") {
                    dHobj.alt = "销售型";
                    dHobj.src = "../image/SaleOrder/jianyi.png";
                    $(".xiaoshou").show();
                    $(".jianyi").hide();
                    document.getElementById("tbToCount").onclick = function () { }
                }
                else if (dHobj.alt == "销售型") {
                    dHobj.alt = "标准型";
                    dHobj.src = "../image/SaleOrder/jianyi-b.png";
                    $(".jianyi").show();
                    $(".xiaoshou").hide();
                    dot_number(null, 24)
                    document.getElementById("tbToCount").onclick = function () { window.focus() }
                }
            },
            jingPin_click: function () {
                //                alert($('#hidYZJingPinQty').val());
                //            document.getElementById("txtJinPingMingXi").value
                var href = "JingPinSevice.aspx?d=" + new Date() + "&&tabdata=12345&type=" +
                            document.getElementById("txtWangDian").value + "&jingPinType=" +
                            document.getElementById("txtJingPinType").value;
                if ($('#hidVirtualOrderID').val().length > 10 || $('#hidYZJingPinQty').val().length > 0)
                    href += "&YZ=true"


                href = encodeURI(href);

                var SizeZ = "dialogWidth:850px;dialogHeight:540px;center:yes;edge:sunken;help:no;resizable:no;scroll:yes;status:no;";
                var returnValue = window.showModalDialog(href, window, SizeZ);


            },
            pageEnabledButton: function () {

                var domHtmlObj_DaBao = document.getElementById("A1");
                domHtmlObj_DaBao.disabled = true;
                domHtmlObj_DaBao.src = "../image/SaleOrder/baozhuang-c.png";

                var domHtmlObj_DaBao = document.getElementById("B1");
                domHtmlObj_DaBao.disabled = true;
                domHtmlObj_DaBao.src = "../image/SaleOrder/dabao-c.png";

                var domHtmlObj_JinJia = document.getElementById("C9");
                if (domHtmlObj_JinJia != null) {
                    domHtmlObj_JinJia.disabled = true;
                    domHtmlObj_JinJia.src = "../image/SaleOrder/sjfl-e.png";
                }
                var domAppraisal = document.getElementById("iButAppraisal");
                domAppraisal.disabled = true;
                domAppraisal.src = "../image/SaleOrder/dingsheng-b.png";

                // var domOrderSend = document.getElementById("iButOrderSend");
                // domOrderSend.disabled = true;
                // domOrderSend.src = "../image/SaleOrder/chuangsong-b.png";
                document.getElementById("chkJiaoQianXian").disabled = true;

                document.getElementById("chkCheChuanShui").disabled = true;
                document.getElementById("chkTiePaiFei").disabled = true;

                document.getElementById("txtTeBieGuiGe").onfocus = function () { window.focus(); }
                document.getElementById("txtQiTa").onfocus = function () { window.focus(); };
                document.getElementById("txtQiTa2").onfocus = function () { window.focus(); };
            }
        };

        function goodsReturns(tablData, saleValue, costPrice, wangDian, jingPinType, JPCostPrice) {

            document.getElementById("txtJinPingChengBen").value = salesClass.toDecimal(costPrice);
            document.getElementById("txtJinPingLiRun").value = salesClass.toDecimal(saleValue);
            document.getElementById("hiddJPCostPrice").value = salesClass.toDecimal(JPCostPrice);

            // salesClass.tempValue = 0;  //salesClass.F;
            // salesClass.Fa = salesClass.toDecimal(saleValue);
            salesClass.Fa = salesClass.toDecimal(costPrice);
            salesClass.Fb = salesClass.toDecimal(saleValue);
            //            salesClass.tempValue = salesClass.F;
            //            var temp_Value = salesClass.toDecimal(saleValue);
            //            if ((temp_Value + salesClass.F) <= salesClass.Fa) {
            //                salesClass.F = salesClass.Fa;
            //            }   //精品费 <= 成本
            //            else if ((temp_Value + salesClass.F) >= salesClass.Fb) {
            //                salesClass.F = salesClass.Fb;
            //            }   //精品费 >= 销售价
            //            else
            //                salesClass.F += temp_Value;

            //            if (salesClass.thisType == 1)
            //                salesClass.setResult("F");
            //            else
            //                salesClass.setResult(0);
            document.getElementById("txtJinPingMingXi").value = tablData;
            document.getElementById("txtJingPinType").value = jingPinType
            document.getElementById("txtWangDian").value = wangDian;
            var domHtmlObj = document.getElementById("txtJinPingFei");


        }



        function endRequest() {
            if (PostBackId == "ddlSaleQuDao") {




            }
            if (PostBackId == "ddlCustXingZhi") {
                document.getElementById("chkJiaoQianXian").checked = false;
                salesClass.isJiaoQiangXian_click(document.getElementById("chkJiaoQianXian"));
            } else {
                document.getElementById("chkJiaoQianXian").checked = false;
                salesClass.isJiaoQiangXian_click(document.getElementById("chkJiaoQianXian"));

                salesClass.removeAllValue();
                salesClass.init();
                salesClass.setJinPin("");
                salesClass.setShangYeXian("");
            }

        }

        $(function () {
            if (document.getElementById("txtOrderStatus") == "1") {
                salesClass.pageEnabledButton();
            }   //页面定单已经生成

            var strOrderID = document.getElementById("hidOrderID").value;
            var hrefCust = "../SaleOrder_Manage/OrderCustInfo.aspx";
            var hrefFuKuan = "../SaleOrder_Manage/OrderCarNewInfo.aspx";

            if (strOrderID.length > 5) {
                hrefCust += "?OrderID=" + strOrderID;
                hrefFuKuan += "?OrderID=" + strOrderID;
            }
            if (strOrderID.length > 10) {
                $("#carmain").click(function () {
                    parent.winopen(hrefCust + '&&syauto=' + new Date(), '车主信息', 720, 450, true, true, false);
                    //  $.open({ id: 'opena', url: hrefCust, title: '', width: 720, height: 450 });
                });

                $("#yufu").click(function () {

                    parent.winopen(hrefFuKuan + '&&syauto=' + new Date(), '购车预算', 720, 450, true, true, false);
                    //$.open({ id: 'opena', url: hrefFuKuan, title: '购车预算', width: 720, height: 350 });
                });
            }


            default_value[0] = document.getElementById("txtCheShenJiaGe").value;
            default_value[1] = document.getElementById("txtGouZhiShui").value;
            default_value[2] = document.getElementById("txtBaoDanJine").value;
            default_value[3] = document.getElementById("txtShangYeXian").value;
            default_value[4] = document.getElementById("txtJiaoQiangXian").value;
            default_value[5] = document.getElementById("txtJinPingChengBen").value;
            default_value[6] = document.getElementById("txtJinPingFei").value;
            default_value[7] = document.getElementById("txtCheChuanShui").value;
            default_value[8] = document.getElementById("txtTiePaiFei").value;
            default_value[9] = document.getElementById("txtTeBieGuiGe").valie;
            default_value[10] = document.getElementById("txtQiTa").value + 0 + document.getElementById("txtQiTa2").value;
            default_value[11] = document.getElementById("txtDingDanZhonge").value;
            default_value[12] = document.getElementById("txtDingDanZhonge").value;

            if (!document.getElementById("chkJiaoQianXian").checked) {
                document.getElementById("chkJiaoQianXian").title = document.getElementById("txtJiaoQiangXian").value;
                document.getElementById("txtJiaoQiangXian").value = "";
                document.getElementById("txtJiaoQiangXian").disabled = true;
            }
            else {
                document.getElementById("chkJiaoQianXian").checked = true;
            }

            if (!document.getElementById("chkCheChuanShui").checked) {
                document.getElementById("chkCheChuanShui").title = document.getElementById("txtCheChuanShui").value;
                document.getElementById("txtCheChuanShui").value = "";
                document.getElementById("txtCheChuanShui").disabled = true;
            }
            else {
                document.getElementById("chkCheChuanShui").checked = true;
            }

            if (!document.getElementById("chkTiePaiFei").checked) {
                document.getElementById("chkTiePaiFei").title = document.getElementById("txtTiePaiFei").value;
                document.getElementById("txtTiePaiFei").value = "";
                document.getElementById("txtTiePaiFei").disabled = true;
            }
            else {
                document.getElementById("chkTiePaiFei").checked = true;
            }

            salesClass.init();
            salesClass.Z = Number(toDecimal(document.getElementById("txtDingDanZhonge").value));
            switch (document.getElementById("hidSWZCSort").value) {
                case "DaBao":
                    //打包
                    salesClass.salesType = 1;
                    salesClass.thisType = 1;
                    var domHtmlObj_DaBao = document.getElementById("A1");
                    domHtmlObj_DaBao.disabled = true;
                    domHtmlObj_DaBao.src = "../image/SaleOrder/baozhuang-c.png";
                    var domHtmlObj_JinJia = document.getElementById("C9");
                    if (domHtmlObj_JinJia != null) {
                        domHtmlObj_JinJia.disabled = true;
                        domHtmlObj_JinJia.src = "../image/SaleOrder/sjfl-e.png";
                    }
                    break;
                case "BaoPai":
                    //包牌
                    salesClass.salesType = 2;
                    salesClass.thisType = 1;
                    var domHtmlObj_DaBao = document.getElementById("B1");
                    domHtmlObj_DaBao.disabled = true;
                    domHtmlObj_DaBao.src = "../image/SaleOrder/dabao-c.png";
                    var domHtmlObj_JinJia = document.getElementById("C9");
                    if (domHtmlObj_JinJia != null) {
                        domHtmlObj_JinJia.disabled = true;
                        domHtmlObj_JinJia.src = "../image/SaleOrder/sjfl-e.png";
                    }
                    break;
                case "JingJia":
                    //车身净价
                    salesClass.salesType = 4;
                    salesClass.thisType = 1;
                    var domHtmlObj_DaBao = document.getElementById("A1");
                    domHtmlObj_DaBao.disabled = true;
                    domHtmlObj_DaBao.src = "../image/SaleOrder/baozhuang-c.png";
                    var domHtmlObj_DaBao = document.getElementById("B1");
                    domHtmlObj_DaBao.disabled = true;
                    domHtmlObj_DaBao.src = "../image/SaleOrder/dabao-c.png";
                    break;
            }
        });

        function ShowOrderPrint() {

            var OrderID = document.getElementById("hidOrderID").value;
            //            if (OrderID == "") {
            //                alert("请先保存定单！");
            //                return false;
            //            }
            //            if (document.getElementById("hidOrder_YuJiaoCheDate").value == "" || document.getElementById("hidOrder_CustMobile").value == "") {
            //                alert("请先完善定单信息！");
            //                return false;
            //            }

            var href = "../SaleOrder_Manage/print/saleOrderPrint.aspx?Order_Guid=" + OrderID;

            var returnValue = window.open(href, "", "", "");

            return false;
        }

        function changeColor() {
            var strCheXi = document.getElementById("ddlCarCheXi").value;
            var strColor = document.getElementById("ddlCarColor").value;

            document.getElementById("imgCarPic").src = "../StyleSheet/imgCarPictures/" + strCheXi + " " + strColor + ".gif";

            return false;
        }


        var PostBackId;

        Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(function (sender, e) {

            PostBackId = e.get_postBackElement().id;

        });

        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(endRequest);
    </script>
    <div id="OrderReviewWin">
    </div>
    <div id="divTiShi" class="TiShiBox">
    </div>
    
<div>

    <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="37B0E5BA" />
</div>

<script type="text/javascript">
//<![CDATA[
Sys.Application.initialize();
//]]>
</script>
</form>
</body>
</html>
