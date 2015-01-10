
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
  客户声音 手动添加
</title> <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" /><script src="../../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../JS/Frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../JS/Frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../JS/common.js?v=2dfbab1f71764dc182eb87e4e0aad2fc" type="text/javascript"></script><link href="../../style/common.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<script language="javascript" type="text/javascript" >
 
    function carReturn(chePai, lianXiPerson, tel, mobile, cusId, customSort, weiXiuCiShu, huiYuanSort,vehicleId) {
        document.getElementById("txtChePaiHaoMa").value = chePai;
        document.getElementById("txtLianXiRenName").value = lianXiPerson;
        document.getElementById("txtCheZhuName").value = lianXiPerson;
        document.getElementById("txtLianXiTel").value = tel;
        document.getElementById("txtShouJiHaoMa").value = mobile;
        document.getElementById("txtCheZhuSort").value = customSort;
        document.getElementById("txtLaiChangCiShu").value = weiXiuCiShu;
        document.getElementById("txtHuiYuanDengJi").value = huiYuanSort;
        document.getElementById("txtCusId").value = cusId;
        document.getElementById("txtVehicleId").value = vehicleId;


    }

    function ChePaiShow() { 
        var href = "../ComplaintManage/ChePaiSelect.aspx?d=" + new Date();
        var SizeZ = 'dialogWidth:900px;dialogHeight:700px;center:yes;edge:sunken;help:no;resizable:no;scroll:no;status:no;';
        var returnValue = window.showModalDialog(href, window, SizeZ);

        return false;

    }

</script>

<body>
    <form name="form1" method="post" action="UserSuggestDetail.aspx?suggestId=1df6b94a-9202-4fd3-9f2a-3534c0a78387&amp;d=Sat+Jan+10+2015+16%3a04%3a49+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMjUwODgwMDEwD2QWAgIDD2QWAgIbDw8WAh4EVGV4dAUG5L+u5pS5ZGRkl9clsLPYm0xwgWTw3vCHZ4ZVAbA=" />
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
     <table border="0" style="width:700px;border-bottom:1px solid #b8b8b8;">
        <tr><td class="titlebg"><span>客服管理</span>(客户声音)
         </td><td align="right">
           </td></tr>
         </table> 
    </div> 

    <div>
     
     <table border="0"  style="width:700px;">
       <tr>
         <td>车牌号码:</td><td>
         <input name="txtCusId" type="text" maxlength="100" id="txtCusId" style="display:none;" />
         <input name="txtVehicleId" type="text" maxlength="100" id="txtVehicleId" style="display:none;" />
         <input name="txtChePaiHaoMa" type="text" value="鄂JFX899" maxlength="10" id="txtChePaiHaoMa" /> </td>
         <td>*联系人:</td><td><input name="txtLianXiRenName" type="text" value="陈志" maxlength="30" id="txtLianXiRenName" /> </td>
         <td>车主姓名:</td><td><input name="txtCheZhuName" type="text" value="陈志" maxlength="40" id="txtCheZhuName" style="width:100%;" /> </td>
       </tr>
       <tr>
         <td>手机号码:</td><td><input name="txtShouJiHaoMa" type="text" value="13972724139" maxlength="10" id="txtShouJiHaoMa" /> </td>
         <td>联系电话:</td><td><input name="txtLianXiTel" type="text" value="13972724139" maxlength="30" id="txtLianXiTel" /> </td>
         <td>来厂次数:</td><td ><input name="txtLaiChangCiShu" type="text" value="3" maxlength="40" id="txtLaiChangCiShu" style="width:100%;" /> </td>
       </tr>
        <tr>
         <td>客户类型:</td><td><input name="txtCheZhuSort" type="text" value="延保客户" maxlength="10" id="txtCheZhuSort" /> </td>
         <td>会员等级:</td><td><input name="txtHuiYuanDengJi" type="text" value="阳光会员" maxlength="30" id="txtHuiYuanDengJi" /> </td>
         <td>会员号码:</td><td style="width:150px;"><input name="txtHuiYuanHaoMa" type="text" value="30004639" maxlength="40" id="txtHuiYuanHaoMa" style="width:100%;" /> </td>
       </tr>
       <tr>
       <td>客户建议:</td>
       <td colspan="5">
        <textarea name="txtSuggest" rows="2" cols="20" id="txtSuggest" style="height:70px;width:100%;color:Blue;font-weight:bold;">别的店休息区和吸烟区都是分开的，你们是在一起的，这样舒适度就不是很好，希望可以改进。</textarea>
       </td>
       </tr>
       <tr>
       <td>客户声音:</td>
       <td colspan="5">
        <textarea name="txtParise" rows="2" cols="20" id="txtParise" style="height:70px;width:100%;"></textarea>
       </td>
       </tr>
       <tr>
       <td colspan="6" style="padding-left:50px;text-align:center;">
          <a onclick="return saveCheck();" id="lnkSave" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSave','')">修改</a>
          <a onclick="return winClose();" id="lnkCancel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkCancel','')">关闭</a>          
       </td>
       </tr>
       
     </table>
       
    </div>
    
    </div>
    
<div>

  <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="2B5AB1F6" />
  <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWEAK62vuvBwK8zMNYAvnC9v4NApTI/XICsPn1ww8Cqsfv4gcCzd+yvAYCt4nPsw0C2tWr/wYCwYbmugYCuqLnvAUCjpe7vAMC38igjAMC84SK0g8Co+3tgQgCprS0zwGasIh+zuawxbE0ZTgb3LE3LX6fdA==" />
</div></form> 

    <script language="javascript" type="text/javascript">


        //防止多次点击保存按钮
        var btnFlag = "0";
        function saveCheck() {
            if ($("#txtChePaiHaoMa").val() == "") {
                alert('未选择任何客户！');
                return false;
            }

            if (btnFlag == "0") {
                btnFlag = "1";
                return true;
            } else {
                return false;
            }

        }


        function winClose() {
            if (!confirm("您确定要退出？")) {
                return false;
            }
            window.opener = null;
            window.close();
            return false;
        }
 


    </script>


</body>
</html>