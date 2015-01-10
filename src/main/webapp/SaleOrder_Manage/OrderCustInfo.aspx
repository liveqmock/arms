
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	客户信息完善
</title>
    <style type="text/css">
        .txtCss
        {
            width: 120px;
        }
        .spanTxtCss
        {
            width:324px;
        }
        .txtEasyUiCss
        {
        }
        .IDCardNo
        {
            font-size: 8pt;
        }
        .CssDDL
        {
            width: 124px;
        }
    </style>
    <script language="javascript" type="text/javascript">
        //获取经办人信息
        function GetJBRen() {
            if (document.getElementById("txtJBRenName").value != document.getElementById("txtCustName").value) {
                if (!confirm("名义人和经办人不同,是否替换经办人信息?"))
                    return false;
            }
            document.getElementById("txtJBRenName").value = document.getElementById("txtCustName").value; //经办人姓名
            document.getElementById("ddlJBRenSex").text = document.getElementById("ddlCustSex").text;
            document.getElementById("ddlJBRenJob").text = document.getElementById("ddlCustJob").text;

            if (document.getElementById("txtCustTel").value == "")
               { 
                  document.getElementById("txtCustTel").value = document.getElementById("txtJBRenTel").value;
}
            if (document.getElementById("txtCustTel").value != "")
               { document.getElementById("txtJBRenTel").value = document.getElementById("txtCustTel").value;}

            if (document.getElementById("txtCustMobile").value == "")
                {document.getElementById("txtCustMobile").value = document.getElementById("txtJBRenMobile").value;
              }
            if (document.getElementById("txtCustMobile").value != ""){
                document.getElementById("txtJBRenMobile").value = document.getElementById("txtCustMobile").value;
              
              if(document.getElementById("ddlCustZhengJianSort").value==''){
                  var dd=document.getElementById("ddlCustZhengJianSort");
                  var txt1= $("#ddlCustZhengJianSort").find("option:selected").text();
                 //var txt1=dd.options.length;
               // var dd2 =$("#ddlJBRenZhengJianSort option[text='"+txt1+"']");//.attr("selected",true);
                   //$("#ddlJBRenZhengJianSort option[text='身份证']").attr("selected", true)
                   var dd2=document.getElementById("ddlJBRenZhengJianSort");
                   for (var i = 0; i <dd2.options.length; i++) {        
                 if (dd2.options[i].text== txt1) {        
                       dd2.value=dd2.options[i].value;
                    }  
                      
                  }         
                    }
                 else{
                  document.getElementById("ddlJBRenZhengJianSort").value = document.getElementById("ddlCustZhengJianSort").value;
              }
              

            //document.getElementById("ddlJBRenZhengJianSort").text = document.getElementById("ddlCustZhengJianSort").text;
             //alert(document.getElementById("ddlCustZhengJianSort").text);
            document.getElementById("txtJBRenZhengJianHao").value = document.getElementById("txtCustZhengJianHao").value;
            document.getElementById("ddlJBRenJob").value = document.getElementById("ddlCustJob").value;
            document.getElementById("txtJBRenAddress").value = document.getElementById("txtCustHuJiAddress").value;
            if (document.getElementById("txtCustAddress").value != ""){
                document.getElementById("txtJBRenAddress").value = document.getElementById("txtCustAddress").value;
             $("#txtJBRenBirthday").datebox("setValue",getBirthdatByIdNo(document.getElementById("txtCustZhengJianHao").value));
            //document.getElementById("txtJBRenBirthday").value = getBirthdatByIdNo(document.getElementById("txtCustZhengJianHao").value);
            document.getElementById("txtJBRenEMail").value = document.getElementById("txtCustEMail").value;
            return false;}}
        }

        function getBirthdatByIdNo(iIdNo) {
            var tmpStr = "";
            var idDate = "";
            var tmpInt = 0;
            var strReturn = "";

            if ((iIdNo.length != 15) && (iIdNo.length != 18)) {
                strReturn = "";
                return strReturn;
            }

            if (iIdNo.length == 15) {
                tmpStr = iIdNo.substring(6, 12);
                tmpStr = "19" + tmpStr;
                tmpStr = tmpStr.substring(0, 4) + "-" + tmpStr.substring(4, 6) + "-" + tmpStr.substring(6)
            }
            else {
                tmpStr = iIdNo.substring(6, 14);
                tmpStr = tmpStr.substring(0, 4) + "-" + tmpStr.substring(4, 6) + "-" + tmpStr.substring(6)
            }
            return tmpStr;
        }

        function GetJBRenBirthday() {
            var strIdCardNo = document.getElementById("txtJBRenZhengJianHao").value;
            //document.getElementById("txtJBRenBirthday").value = getBirthdatByIdNo(strIdCardNo);
            $("#txtJBRenBirthday").datebox("setValue",getBirthdatByIdNo(strIdCardNo));
        }

        function CustJuZhuXingZhi() {
            var strJuZhuXingZhi = document.getElementById("ddlCustJuZhuXingZhi").text;

            if (strJuZhuXingZhi == "居住") {
                document.getElementById("txtCustAddress").disabled = false;
                document.getElementById("txtCustAddress").style.backgroundColor = "";
            }
            else {
                document.getElementById("txtCustAddress").style.backgroundColor = "Silver";
                document.getElementById("txtCustAddress").disabled = true;
                document.getElementById("txtCustAddress").value = "";
            }
        }       
    </script>
    <script language="javascript" type="text/javascript">
        function CheckForms() {
            if (document.getElementById("txtCustName").value == "") {
                alert('名义人不能为空!');
                return false;
            }
            if (document.getElementById("txtJBRenName").value.length > 10) {
                alert('经办人姓名不能多于10个字符！');
                return false;
            }
            if (document.getElementById("ddlCustXingZhi").text == "") {
                alert('客户性质不能为空!');
                return false;
            }
            if (document.getElementById("txtCustTel").value == "") {
                alert("客户固定电话不能为空！");
                return false;
            }
            if (document.getElementById("ddlCustZhengJianSort").text == "") {

                alert('证件类型不能为空!');
                return false;
            }
            if (document.getElementById("txtCustZhengJianHao").value == "") {
                alert('证件号码不能为空!');
                return false;
            }
            else {
                if (document.getElementById("ddlCustZhengJianSort").text == "身份证" ||
                document.getElementById("ddlCustZhengJianSort").text == "居民身份证") {
                    if (!isIdCardNo(document.getElementById('txtCustZhengJianHao').text))
                        return false;
                }
            }
            if (document.getElementById("txtCustMobile").value == "") {
                alert('移动电话不能为空!');
                return false;
            }
            else {
                if (!(/^1[34578][0-9]{9}$/).exec(document.getElementById("txtCustMobile").value)) {

                    alert('移动电话无效!');
                    return false;
                }
            }

            if (document.getElementById("txtJBRenName").value == "") {
                alert('经办人不能为空!');
                return false;
            }
            if (document.getElementById("ddlJBRenZhengJianSort").text == "") {
                alert('证件类型不能为空!');
                return false;
            }
            if (document.getElementById("txtJBRenZhengJianHao").value == "") {
                alert('证件号码不能为空!');
                return false;
            }
            else {
                if (document.getElementById("ddlJBRenZhengJianSort").text == "身份证" ||
                document.getElementById("ddlJBRenZhengJianSort").text == "居民身份证") {
                    if (!isIdCardNo(document.getElementById('txtJBRenZhengJianHao').value))
                        return false;
                }
            }
            if (document.getElementById("txtJBRenTel").value == "") {
                alert("经办人固定电话不能为空！");
                return false;
            }
            if (document.getElementById("txtJBRenMobile").value == "") {
                alert('移动电话不能为空!');
                return false;
            }
            else {
                if (!(/^1[34578][0-9]{9}$/).exec(document.getElementById("txtJBRenMobile").value)) {
                    alert('移动电话无效!');
                    return false;
                }
            }
            if (document.getElementById("txtJBRenAddress").value == "") {
                alert('通讯地址不能为空!');
                return false;
            }
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

        //        function isIdCardNo(num) {
        //            if (isNaN(num)) { alert("身份证输入的不是数字！ "); return false; }
        //            var len = num.length, re;
        //            if (len == 15)
        //                re = new RegExp(/^(\d{6})()?(\d{2})(\d{2})(\d{2})(\d{3})$/);
        //            else if (len == 18)
        //                re = new RegExp(/^(\d{6})()?(\d{4})(\d{2})(\d{2})(\d{3})(\d)$/);
        //            else { alert("身份证输入的数字位数不对！ "); return false; }
        //            var a = num.match(re);
        //            if (a != null) {
        //                if (len == 15) {
        //                    var D = new Date("19 " + a[3] + "/ " + a[4] + "/ " + a[5]);
        //                    var B = D.getYear() == a[3] && (D.getMonth() + 1) == a[4] && D.getDate() == a[5];
        //                }
        //                else {
        //                    var D = new Date(a[3] + "/ " + a[4] + "/ " + a[5]);
        //                    var B = D.getFullYear() == a[3] && (D.getMonth() + 1) == a[4] && D.getDate() == a[5];
        //                }
        //                if (!B) { alert("输入的身份证号   " + a[0] + "   里出生日期不对！ "); return false; }
        //            }
        //            return true;
        //        } 
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
                    alert(error);
                    return false;
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
                    error = "身份证效验位错误!...正确为： " + intCheckDigit + ".";
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
            var reg = /^(\d+)-(\d{1,2})-(\d{1,2}) (\d{1,2}):(\d{1,2}):(\d{1,2})$/;
            var r = str.match(reg);
            if (r == null) return false;
            r[2] = r[2] - 1;
            var d = new Date(r[1], r[2], r[3], r[4], r[5], r[6]);
            if (d.getFullYear() != r[1]) return false;
            if (d.getMonth() != r[2]) return false;
            if (d.getDate() != r[3]) return false;
            if (d.getHours() != r[4]) return false;
            if (d.getMinutes() != r[5]) return false;
            if (d.getSeconds() != r[6]) return false;
            return true;
        }
    </script>
 <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=2dfbab1f71764dc182eb87e4e0aad2fc" type="text/javascript"></script><link href="../style/common.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="OrderCustInfo.aspx?OrderID=e2d0d606-9016-4ecc-913f-3b5b168e61f5&amp;&amp;syauto=Fri+Jan+09+2015+16%3a54%3a34+GMT+0800" id="form1">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMTkxMTIxMjE3D2QWAgIDD2QWFAIHDw8WBB4EVGV4dAUJ55+z6ZO25Li5HghSZWFkT25seWdkZAIJDxAPFgYeDkRhdGFWYWx1ZUZpZWxkBQFkHg1EYXRhVGV4dEZpZWxkBQF2HgtfIURhdGFCb3VuZGdkEBUGCeWFrOWKoeWRmAnnrqHnkIbogIUG5YW25LuWBuiAgeW4iAbkuKrkvZMAFQYkYzk3NTU5YjktYTJhNC00NmJmLWE2MjItNWJiMGY0MjBkZTIxJDQxMmI4OTkyLTBkYzgtNGE4ZS1iZGZiLTZjNGEzMGZlMzU1YiQwYjkzZjBhOS1hMzkyLTQ3ZmUtYWU5Ni05OTU0ZDQyYWIxNTYkZWQyYmUyNDItNjM4YS00M2YxLThjOTMtNzRjYjE1OTliZDMxJGM5YWE2ZjI4LTViYmItNGE5NS1hZmNlLTE3ZDlmNDIyMTk1NgAUKwMGZ2dnZ2dnZGQCCw8QZA8WAWYWAQUD5aWzZGQCDQ8QDxYGHwIFAWQfAwUBdh8EZ2QQFQYM5LyB5Lia6LSt6L2mDOi9pui+huaJueWPkQzkuKrkurrotK3ovaYM5pS/5bqc6YeH6LStBuWFtuS7lgzkuKrkurrotK3ovaYVBiQxOWI4MWRhMi03MjAwLTQ5OWUtYWM2Yi1iZWRiNzZlNWQ2MjMkYjhmODQyODgtYTZhNy00OTA5LTgzYTAtOGIzZGNjODA3MTc3JDFkMmI5YTgwLWQ0NjEtNDU0Yy1iODI3LTY4MzM1NmQwYWFmOSRkNzkyMjNiOC01MDE5LTQ1NDktYjQyMy0wNzQ1OTgzMTcyYjMkZGY5YmY0ZjQtNzkyNi00YjU0LTlkZWQtMmY4ODMzNWVjMDFjABQrAwZnZ2dnZ2dkZAIRDxAPFgYfAgUBZB8DBQF2HwRnZBAVBg/muK/mvrPouqvku73or4EP5riv5r6z6Lqr5Lu96K+BBuaKpOeFpwnouqvku73or4ES57uE57uH5py65p6E5Luj56CBCei6q+S7veivgRUGJDAwOTdkZGIwLWM0OGUtNGUyMi1iMTMzLTZjZDdmYjczZDg1NyRhZWJlMjhjZC1lZjQ1LTRlMWItYmMwMi0zOTFkNzBiNGRmZGMkNTRkNjBjZjItODZkYy00NDJlLTgxOTItN2M2ZjJiNmI2ZDBlJGI2Mjk3NDdhLWVhYTctNDExMC1iZDdkLTJmMWY3M2ZkZWNmNSQyMzQ0YzdjOS05NWMzLTRjNzktODcxZi05MDBjZjM0MTgxZWYAFCsDBmdnZ2dnZ2RkAhkPEA9kFgIeCG9uY2hhbmdlBRJDdXN0SnVaaHVYaW5nWmhpKCkPFgFmFgFlZGQCGw8PFggeCUJhY2tDb2xvcgqWAR8ABRLmsZ/opb/nnIHkuZ3msZ/luIIeB0VuYWJsZWRoHgRfIVNCAghkZAIhDxBkDxYBZhYBBQPlpbNkZAIjDxAPFgYfAgUBZB8DBQF2HwRnZBAVBgnlhazliqHlkZgJ566h55CG6ICFBuWFtuS7lgbogIHluIgG5Liq5L2TABUGJGM5NzU1OWI5LWEyYTQtNDZiZi1hNjIyLTViYjBmNDIwZGUyMSQ0MTJiODk5Mi0wZGM4LTRhOGUtYmRmYi02YzRhMzBmZTM1NWIkMGI5M2YwYTktYTM5Mi00N2ZlLWFlOTYtOTk1NGQ0MmFiMTU2JGVkMmJlMjQyLTYzOGEtNDNmMS04YzkzLTc0Y2IxNTk5YmQzMSRjOWFhNmYyOC01YmJiLTRhOTUtYWZjZS0xN2Q5ZjQyMjE5NTYAFCsDBmdnZ2dnZ2RkAiUPEA8WBh8CBQFkHwMFAXYfBGdkEBUGD+a4r+a+s+i6q+S7veivgQ/muK/mvrPouqvku73or4EG5oqk54WnCei6q+S7veivgRLnu4Tnu4fmnLrmnoTku6PnoIEAFQYkMDA5N2RkYjAtYzQ4ZS00ZTIyLWIxMzMtNmNkN2ZiNzNkODU3JGFlYmUyOGNkLWVmNDUtNGUxYi1iYzAyLTM5MWQ3MGI0ZGZkYyQ1NGQ2MGNmMi04NmRjLTQ0MmUtODE5Mi03YzZmMmI2YjZkMGUkYjYyOTc0N2EtZWFhNy00MTEwLWJkN2QtMmYxZjczZmRlY2Y1JDIzNDRjN2M5LTk1YzMtNGM3OS04NzFmLTkwMGNmMzQxODFlZgAUKwMGZ2dnZ2dnZGQYAQUeX19Db250cm9sc1JlcXVpcmVQb3N0QmFja0tleV9fFgEFCmltZ2J0blNhdmWjLtK6xetE2rHlrK1czNBSTWvDNA==" />
</div>

    <div class="title">
        <table style="width: 100%;">
            <tr>
                <td class="titlebg">
                    <span class="titleSpan">客户信息</span>
                </td>
                <td>
                    <input name="hidOrderStatus" type="hidden" id="hidOrderStatus" value="0    " />

                    <div id="PageTitle" style="font-weight: bold; color: #009933; width: 100px;">
                    </div>
                </td>
                <td>
                    <input type="image" name="imgbtnSave" id="imgbtnSave" src="../image/SaleOrder/button-submit.png" onclick="return CheckForms();" style="border-width:0px;width: 72px; height: 27px" />
                    <input type="image" onclick="window.parent.color_window();" src="../image/SaleOrder/button-close.png"
                        style="width: 72px; height: 27px" />
                </td>
            </tr>
        </table>
    </div>
    <table class="main-table" style="width: 680px;" cellpadding="0" cellspacing="0" align="center">

        <tr>
            <td>
                <table width="660px" style="height: 300px;" cellpadding="0" cellspacing="0" align="center">
                    <tr>
                        <td nowrap="nowrap" rowspan="3" align="center" valign="bottom">
                            <img alt="" src="../image/SaleOrder/carmingyi.png" style="width: 50px; height: 50px" />
                        </td>
                        <td nowrap="nowrap">
                            名 义 人:
                        </td>
                        <td nowrap="nowrap" colspan="3">
                            <div>
                                <input name="txtCustName" type="text" value="石银丹" readonly="readonly" id="txtCustName" class=" spanTxtCss" /></div>
                        </td>
                        <td nowrap="nowrap">
                            职业行业:
                        </td>
                        <td nowrap="nowrap">
                            <select name="ddlCustJob" id="ddlCustJob" class="CssDDL">
	<option value="c97559b9-a2a4-46bf-a622-5bb0f420de21">公务员</option>
	<option value="412b8992-0dc8-4a8e-bdfb-6c4a30fe355b">管理者</option>
	<option value="0b93f0a9-a392-47fe-ae96-9954d42ab156">其他</option>
	<option value="ed2be242-638a-43f1-8c93-74cb1599bd31">老师</option>
	<option value="c9aa6f28-5bbb-4a95-afce-17d9f4221956">个体</option>
	<option selected="selected" value=""></option>

</select>
                        </td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap">
                            性 别:
                        </td>
                        <td nowrap="nowrap">
                            <select name="ddlCustSex" id="ddlCustSex" class="CssDDL">
	<option selected="selected" value="">女</option>
	<option value="男">男</option>
	<option value="女">女</option>

</select>
                        </td>
                        <td nowrap="nowrap">
                            客户性质:
                        </td>
                        <td nowrap="nowrap">
                            <div>
                                <select name="ddlCustXingZhi" id="ddlCustXingZhi" class="CssDDL">
	<option value="19b81da2-7200-499e-ac6b-bedb76e5d623">企业购车</option>
	<option value="b8f84288-a6a7-4909-83a0-8b3dcc807177">车辆批发</option>
	<option value="1d2b9a80-d461-454c-b827-683356d0aaf9">个人购车</option>
	<option value="d79223b8-5019-4549-b423-0745983172b3">政府采购</option>
	<option value="df9bf4f4-7926-4b54-9ded-2f88335ec01c">其他</option>
	<option selected="selected" value="">个人购车</option>

</select>
                            </div>
                        </td>
                        <td nowrap="nowrap">
                            固定电话:
                        </td>
                        <td nowrap="nowrap">
                            <input name="txtCustTel" type="text" id="txtCustTel" class="txtCss" />
                        </td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap">
                            证件类型:
                        </td>
                        <td nowrap="nowrap">
                            <select name="ddlCustZhengJianSort" id="ddlCustZhengJianSort" class="CssDDL">
	<option value="0097ddb0-c48e-4e22-b133-6cd7fb73d857">港澳身份证</option>
	<option value="aebe28cd-ef45-4e1b-bc02-391d70b4dfdc">港澳身份证</option>
	<option value="54d60cf2-86dc-442e-8192-7c6f2b6b6d0e">护照</option>
	<option value="b629747a-eaa7-4110-bd7d-2f1f73fdecf5">身份证</option>
	<option value="2344c7c9-95c3-4c79-871f-900cf34181ef">组织机构代码</option>
	<option selected="selected" value="">身份证</option>

</select>
                        </td>
                        <td nowrap="nowrap">
                            证件号码:
                        </td>
                        <td nowrap="nowrap">
                            <input name="txtCustZhengJianHao" type="text" id="txtCustZhengJianHao" class="txtCss" />
                        </td>
                        <td nowrap="nowrap">
                            移动电话:
                        </td>
                        <td nowrap="nowrap">
                            <input name="txtCustMobile" type="text" id="txtCustMobile" class="txtCss" />
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="2" align="center">
                            <b>车辆名义人<br />
                                信息</b>
                        </td>
                        <td nowrap="nowrap">
                            户籍地址:
                        </td>
                        <td nowrap="nowrap" colspan="3">
                            <input name="txtCustHuJiAddress" type="text" id="txtCustHuJiAddress" class="spanTxtCss" />
                        </td>
                        <td nowrap="nowrap">
                            居住类型:
                        </td>
                        <td nowrap="nowrap">
                            <select name="ddlCustJuZhuXingZhi" id="ddlCustJuZhuXingZhi" class="CssDDL" onchange="CustJuZhuXingZhi()">
	<option selected="selected" value=""></option>
	<option value="常住">常住</option>
	<option value="居住">居住</option>

</select>
                        </td>
                    </tr>
                    
                    <tr>
                        <td nowrap="nowrap">
                            居住地址:
                        </td>
                        <td nowrap="nowrap" colspan="3">
                            <input name="txtCustAddress" type="text" value="江西省九江市" id="txtCustAddress" disabled="disabled" class=" spanTxtCss" style="background-color:Silver;" />
                        </td>
                        
                        <td nowrap="nowrap">
                            电子邮箱:
                        </td>
                        <td nowrap="nowrap">
                            
                            <input name="txtCustEMail" type="text" id="txtCustEMail" class="txtCss" />
                        </td>
                    </tr>
                    <tr style=" border: 1px solid #eee;"><td colspan="8"> <hr /></td></tr>
                    <tr>
                        <td nowrap="nowrap" rowspan="2" align="center" valign="bottom">
                            <img alt="点击同步车主信息" src="../image/SaleOrder/jinbanren.png" style="width: 50px; height: 50px;
                                cursor: hand;" onclick="GetJBRen()" />
                        </td>
                        <td nowrap="nowrap">
                            经 办 人:
                        </td>
                        <td nowrap="nowrap">
                            <input name="txtJBRenName" type="text" value="石银丹" id="txtJBRenName" class="txtCss" />
                        </td>
                        <td nowrap="nowrap">
                            性 别:
                        </td>
                        <td nowrap="nowrap">
                            <select name="ddlJBRenSex" id="ddlJBRenSex" class="CssDDL">
	<option selected="selected" value="">女</option>
	<option value="男">男</option>
	<option value="女">女</option>

</select>
                        </td>
                        <td nowrap="nowrap">
                            职业行业:
                        </td>
                        <td nowrap="nowrap">
                            <select name="ddlJBRenJob" id="ddlJBRenJob" class="CssDDL">
	<option value="c97559b9-a2a4-46bf-a622-5bb0f420de21">公务员</option>
	<option value="412b8992-0dc8-4a8e-bdfb-6c4a30fe355b">管理者</option>
	<option value="0b93f0a9-a392-47fe-ae96-9954d42ab156">其他</option>
	<option value="ed2be242-638a-43f1-8c93-74cb1599bd31">老师</option>
	<option value="c9aa6f28-5bbb-4a95-afce-17d9f4221956">个体</option>
	<option selected="selected" value=""></option>

</select>
                        </td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap">
                            证件类型:
                        </td>
                        <td nowrap="nowrap">
                            <select name="ddlJBRenZhengJianSort" id="ddlJBRenZhengJianSort" class="CssDDL">
	<option value="0097ddb0-c48e-4e22-b133-6cd7fb73d857">港澳身份证</option>
	<option value="aebe28cd-ef45-4e1b-bc02-391d70b4dfdc">港澳身份证</option>
	<option value="54d60cf2-86dc-442e-8192-7c6f2b6b6d0e">护照</option>
	<option value="b629747a-eaa7-4110-bd7d-2f1f73fdecf5">身份证</option>
	<option value="2344c7c9-95c3-4c79-871f-900cf34181ef">组织机构代码</option>
	<option selected="selected" value=""></option>

</select>
                        </td>
                        <td nowrap="nowrap">
                            证件号码:
                        </td>
                        <td nowrap="nowrap">
                            <input name="txtJBRenZhengJianHao" type="text" id="txtJBRenZhengJianHao" class="txtCss" onblur="GetJBRenBirthday()" />
                        </td>
                        <td nowrap="nowrap">
                            出生日期:
                        </td>
                        <td nowrap="nowrap">
                            <input name="txtJBRenBirthday" type="text" id="txtJBRenBirthday" class="easyui-datebox" style="width:125px;" />
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="2" align="center">
                            <b>车辆经办人<br />
                                信息</b>
                        </td>
                        <td nowrap="nowrap">
                            固定电话:
                        </td>
                        <td nowrap="nowrap">
                            <input name="txtJBRenTel" type="text" value="8502222" id="txtJBRenTel" class="txtCss" />
                        </td>
                        <td nowrap="nowrap">
                            移动电话:
                        </td>
                        <td nowrap="nowrap">
                            <input name="txtJBRenMobile" type="text" value="13926818394" id="txtJBRenMobile" class="txtCss" />
                        </td>
                        <td nowrap="nowrap">
                            邮政编码:
                        </td>
                        <td nowrap="nowrap">
                            <input name="txtJBRenYouBian" type="text" maxlength="6" id="txtJBRenYouBian" class="txtCss" />
                            
                        </td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap">
                            通讯地址:
                        </td>
                        <td nowrap="nowrap" colspan="3">
                           
                                <input name="txtJBRenAddress" type="text" id="txtJBRenAddress" class=" spanTxtCss" />
                        </td>
                        <td nowrap="nowrap">
                            电子邮箱:
                        </td>
                        <td nowrap="nowrap">
                            <input name="txtJBRenEMail" type="text" id="txtJBRenEMail" class="txtCss" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="F1CBB4B8" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWOQLJtYaLCgKt7q3LAgLkv+DqCwLxmfnCDQLsgdf6BQKp6LeZBQKKsrCHBQKa87abBQLN6ZWeBQKfnoWSBAKlnrndBQKsm5KzCQLow5KzCQKb+o70BgK8w5DhBQLQv6bWBQLnlNdQAv7n39QLAvLG4kYCwJ7F7w0CjO2BqwMC9N2A6A0C+v/4ygECmNyN1AICs9bY1QwC4r/yxgQCn5OslAkCpurMzgoCruCXyQwCiabO7ggCkf3h9gkC0vHh9gkC7vfWyQcC0Yjz6w4Cyr/LvwwCrbvcjQ4CpL734wIC4Ob34wICgdyTZgLEtfMFAufv9BsC967yBwKgtNECAvLDwY4BAvrc/gMCguz/wA4CjM6H4gIC7u3y/AECxeen/Q8ClI6N7gcCreXxqAsC25+KmwIC26iV3gYC/LuQ4w4Cx465+w0CkcLdkgkCw4LTA2kMi++1CysShXTYphViOuViXw6Z" />
</div></form>
</body>
</html>