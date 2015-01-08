<html>
<head1>
    <title>售后回访处理填写</title>

</head1>
<body>
    <form name="form1" method="post" action="ChuLiTianXie.aspx?vehicleId=132b0fdd-a2e1-4a77-a3f3-cb2a99ee8f86&amp;saleAfterGuid=ee9a30d5-6d9e-40f8-8da2-8a6064ff561f&amp;cusGuid=132b0fdd-a2e1-4a77-a3f3-cb2a99ee8f86&amp;strNum=0&amp;g=339ea881-7f9f-400b-a386-40e47e829167" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__LASTFOCUS" id="__LASTFOCUS" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTExOTAyOTM1OTAPZBYCAgEPZBYEAgcPEGRkFgFmZAIJDxBkZBYBAgFkZG5UzHAEWgAQkA4IKK0cj8dZThBq" />
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
        <table bordercolor="#ffffff" bordercolordark="#ffffff" bordercolorlight="#dddddd"
            border="1" cellpadding="0" cellspacing="0" width="100%" style="font-size: 13px;">
            <tbody>
                <tr>
                    <td nowrap style="width: 12%" title="客户信息中接待提示信息">
                        重要提示
                    </td>
                    <td colspan="5">
                        <textarea name="txtTiShi" rows="2" cols="20" id="txtTiShi" style="width: 90%; height: 35px;"></textarea>
                        <input type="submit" name="btnTiShiSave" value="保 存" id="btnTiShiSave" style="background-color: #F9F8F5;
                            width: 7%; height: 25px;" />
                    </td>
                </tr>
                <tr>
                    <td nowrap style="width: 12%" title="客户资料中联系人号码">
                        外拨号码
                    </td>
                    <td style="width: 21%">
                        <input name="txtLianXiNum" type="text" value="13699755662" maxlength="20" id="txtLianXiNum" style="width: 90%" />
                    </td>
                    <td style="width: 12%">
                        外拨结果
                    </td>
                    <td style="width: 21%">
                        <select name="ddlLastJieGuo" onchange="javascript:setTimeout('__doPostBack(\'ddlLastJieGuo\',\'\')', 0)" id="ddlLastJieGuo" style="width: 92%">
	<option selected="selected" value=""></option>
	<option value="成功">成功</option>
	<option value="无人接">无人接</option>
	<option value="对方忙">对方忙</option>
	<option value="关机">关机</option>
	<option value="通话中">通话中</option>
	<option value="无法接通">无法接通</option>
	<option value="来电提醒">来电提醒</option>
	<option value="空号">空号</option>
	<option value="错号">错号</option>
	<option value="暂停使用">暂停使用</option>
	<option value="号码?????">??·? ?è?????</option>
	<option value="?? è′1">?? è′1</option>
	<option value="?§??1|??°">?§??1|??°</option>
	<option value="?????¨????????o">?????¨????????o</option>
	<option value="?????￥">?????￥</option>
	<option value="??????">??????</option>

</select>
                    </td>
                    <td   style="width: 12%">
                        ???è????????
                    </td>
                    <td style="width: 21%">
                        <select name="ddlHuiFangJieGuo" id="ddlHuiFangJieGuo" disabled="disabled" onchange="hiddenTr(this.value)" style="width: 92%">
	<option value=""></option>
	<option selected="selected" value="??????">??????</option>
	<option value="?????????">?????????</option>
	<option value="??????">??????</option>

</select>
                    </td>
                </tr>
                <tr>
                    <td   style="width: 12%">
                        ??￠??·???è§?
                    </td>
                    <td colspan="5">
                        <textarea name="txtLastYiJian" rows="2" cols="20" id="txtLastYiJian" style="width: 98%; height: 52px;"></textarea>
                    </td>
                </tr>
                <tr>
                    <td   style="width: 12%">
                        ??￠??·??oè??
                    </td>
                    <td colspan="3">
                        <textarea name="txtSuggest" rows="2" cols="20" id="txtSuggest" style="width: 97%; height: 35px;"></textarea>
                    </td>
                    <td   style="width: 12%">
                        ??￠??·è?¨???
                    </td>
                    <td style="width: 21%">
                        <textarea name="txtPraise" rows="2" cols="20" id="txtPraise" style="width: 91%; height: 35px;"></textarea>
                    </td>
                </tr>
                <tr>
                    <td  style="width: 12%">
                        ?¤? ?3¨
                    </td>
                    <td colspan="3">
                        <textarea name="txtRemark" rows="2" cols="20" id="txtRemark" style="width: 97%; height: 18px;"></textarea>
                    </td>
                    <td style="width: 12%">
                        ???è????????
                    </td>
                    <td style="width: 21%">
                        <select name="ddlHuiFangStatus" id="ddlHuiFangStatus" style="width: 92%">
	<option value=""></option>
	<option selected="selected" value="?·2??????">?·2??????</option>
	<option value="??a??????">??a??????</option>
	<option value="?? é??è??é??">?? é??è??é??</option>

</select>
                    </td>
                </tr>
                <tr id="trTouSuXX" style="display: none">
                    <td  style="width: 12%">
                        ???è§?????±?
                    </td>
                    <td style="width: 21%">
                        <input name="txtTouSuFenL" type="text" id="txtTouSuFenL" autocomplete="off" onclick="return showTree(this)" style="width: 90%" />
                    </td>
                    <td style="width: 12%">
                        ?′§??￥?¨??o|
                    </td>
                    <td style="width: 21%">
                        <select name="ddlUrgentDegree" id="ddlUrgentDegree" style="width: 92%">
	<option value=""></option>
	<option value="???è??">???è??</option>
	<option value="?′§??￥">?′§??￥</option>
	<option value="特紧急">特紧急</option>

</select>
                    </td>
                    <td style="width: 12%">
                        投诉性质
                    </td>
                    <td style="width: 21%">
                        <select name="ddlTouSuXingZh" id="ddlTouSuXingZh" style="width: 92%">
	<option value=""></option>
	<option value="意见">意见</option>
	<option value="一般投诉">一般投诉</option>
	<option value="重大投诉">重大投诉</option>

</select>
                    </td>
                </tr>
                <tr id="trBuM" style="display: none">
                    <td style="width: 12%">
                        投诉部门
                    </td>
                    <td id="tdTouSuBM" colspan="5">
                       
                    </td>

                </tr>
                <tr>
                    <td align="right" colspan="6">
                        <input type="submit" name="btnSave" value="保 存" onclick="return saveCheck();" id="btnSave" style="height:25px;
                            background-color:#F9F8F5;width:6%;" />
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
            </tbody>
        </table>
    </div>

     


    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="3AB4000D" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWLAL+1PqcCALlibDBBAKSpN3EBgLnnKjiCALxh77KCwLxh77KCwLBtNGwBALgrd/bCgLlv72CCwK8yr2cBQLepa8MAuCt05MKAsSekoMIAqek8bkEAsbC8rkEAqyjyjsCwZueggUC8ca5zA4Co9TdhQICn5r0kggCn7WpuwUCu8qh+AsCofbz/AsCnszcmgUC08WnuQcC67vszgsCp9TrjA8C38igjAMC7InW5Q8CmbyL5QQC0r6s7QQCv6yq6wwC99mp6wwC7ZG9yQ8C0O+rvQUCoJCnswYCgOuczgIC2YSw3ggCiKTxqQUC/qDh+gYC343G3gMCn7DdoAQC2sLt+AgCnLe4kgwnIyegdbYoOM3XBHDyCdJDfDZ9Ww==" />
</div></form>

    <script language="javascript" type="text/javascript">

        var btnFlag = "0";
        function saveCheck() {
            //验证各字段长度

            if (btnFlag == "0") { btnFlag = "1"; } else {return false;}


            if (document.getElementById("ddlHuiFangStatus").value == "") {
                alert('回访状态必须填写!');
                btnFlag = "0";
              }


            if (document.getElementById("ddlLastJieGuo").value == "") {
                alert('外拨结果必须填写!');
                btnFlag = "0";
            }

            //if (document.getElementById("ddlHuiFangJieGuo").value == "") {
              //  alert('回访结果必须填写!');
                //btnFlag = "0";
            //}


            var t1 = document.getElementById("txtLastYiJian").innerHTML;
            if (t1.length > 200) {
                alert("客户意见填写超过200字,系统将无法保存");
                btnFlag = "0";
            }


            var t2 = document.getElementById("txtSuggest").innerHTML;
            if (t2.length > 200) {
                alert("客户建议填写超过200字,系统将无法保存");
                btnFlag = "0";
            }


            var t3 = document.getElementById("txtPraise").innerHTML;
            if (t3.length > 200) {
                alert("客户表扬填写超过200字,系统将无法保存");
                btnFlag = "0";
            }

            var t4 = document.getElementById("txtRemark").innerHTML;
            if (t4.length > 200) {
                alert("备注填写超过200字,系统将无法保存");
                btnFlag = "0";
            }

            if (btnFlag == "0") {
                
                return false;
            }
            
            return true;
        }
       
        
          
   
       


        function hiddenTr(value) {
            
            //if (value == "不满意") {
              //  document.getElementById("trTouSuXX").style.display = "";
               // document.getElementById("trBuM").style.display = "";
            //}
            //else {
              //  document.getElementById("trTouSuXX").style.display = "none";
               // document.getElementById("trBuM").style.display = "none";
            //}

            var SizeZ ='height=600,width=700,left=100,top=100,toolbar=no,resizable=yes,status=no,menubar=no,scrollbars=yes';

            if (value == "不满意") {
                var href = "../ComplaintManage/ComplaintAdd.aspx?saleAfterGuid=ee9a30d5-6d9e-40f8-8da2-8a6064ff561f&vehicleId=132b0fdd-a2e1-4a77-a3f3-cb2a99ee8f86&cusId=132b0fdd-a2e1-4a77-a3f3-cb2a99ee8f86&&d=" + new Date();
                z = window.open(href, '投诉', SizeZ);
                z.focus();
          }

        } 



    </script>

</body>
</html>