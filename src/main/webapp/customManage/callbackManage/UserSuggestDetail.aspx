
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	�ͻ����� �ֶ����
</title> <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
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
    <form name="form1" method="post" action="UserSuggestDetail.aspx?suggestId=517649f0-6d38-4e3f-beae-fef069566552&amp;d=Thu+Jan+08+2015+11%3a37%3a46+GMT+0800" id="form1">
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
        <tr><td class="titlebg"><span>�ͷ�����</span>(�ͻ�����)
         </td><td align="right">
           </td></tr>
         </table> 
    </div> 

    <div>
     
     <table border="0"  style="width:700px;">
       <tr>
         <td>���ƺ���:</td><td>
         <input name="txtCusId" type="text" maxlength="100" id="txtCusId" style="display:none;" />
         <input name="txtVehicleId" type="text" maxlength="100" id="txtVehicleId" style="display:none;" />
         <input name="txtChePaiHaoMa" type="text" maxlength="10" id="txtChePaiHaoMa" /> </td>
         <td>*��ϵ��:</td><td><input name="txtLianXiRenName" type="text" maxlength="30" id="txtLianXiRenName" /> </td>
         <td>��������:</td><td><input name="txtCheZhuName" type="text" maxlength="40" id="txtCheZhuName" style="width:100%;" /> </td>
       </tr>
       <tr>
         <td>�ֻ�����:</td><td><input name="txtShouJiHaoMa" type="text" maxlength="10" id="txtShouJiHaoMa" /> </td>
         <td>��ϵ�绰:</td><td><input name="txtLianXiTel" type="text" maxlength="30" id="txtLianXiTel" /> </td>
         <td>��������:</td><td ><input name="txtLaiChangCiShu" type="text" maxlength="40" id="txtLaiChangCiShu" style="width:100%;" /> </td>
       </tr>
        <tr>
         <td>�ͻ�����:</td><td><input name="txtCheZhuSort" type="text" maxlength="10" id="txtCheZhuSort" /> </td>
         <td>��Ա�ȼ�:</td><td><input name="txtHuiYuanDengJi" type="text" maxlength="30" id="txtHuiYuanDengJi" /> </td>
         <td>��Ա����:</td><td style="width:150px;"><input name="txtHuiYuanHaoMa" type="text" maxlength="40" id="txtHuiYuanHaoMa" style="width:100%;" /> </td>
       </tr>
       <tr>
       <td>�ͻ�����:</td>
       <td colspan="5">
        <textarea name="txtSuggest" rows="2" cols="20" id="txtSuggest" style="height:70px;width:100%;color:Blue;font-weight:bold;"></textarea>
       </td>
       </tr>
       <tr>
       <td>�ͻ�����:</td>
       <td colspan="5">
        <textarea name="txtParise" rows="2" cols="20" id="txtParise" style="height:70px;width:100%;">�ͻ�˵�ڹ���֮ǰ���е������Ӧ��ǰ��֪��������������������ס�</textarea>
       </td>
       </tr>
       <tr>
       <td colspan="6" style="padding-left:50px;text-align:center;">
          <a onclick="return saveCheck();" id="lnkSave" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSave','')">�޸�</a>
          <a onclick="return winClose();" id="lnkCancel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkCancel','')">�ر�</a>          
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


        //��ֹ��ε�����水ť
        var btnFlag = "0";
        function saveCheck() {
            if ($("#txtChePaiHaoMa").val() == "") {
                alert('δѡ���κοͻ���');
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
            if (!confirm("��ȷ��Ҫ�˳���")) {
                return false;
            }
            window.opener = null;
            window.close();
            return false;
        }
 


    </script>


</body>
</html>