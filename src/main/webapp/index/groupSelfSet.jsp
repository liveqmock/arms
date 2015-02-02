<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head><title>
	机构设置 
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="groupSelfSet.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTQ4Mjg0NzA2Nw9kFgICAw9kFgQCAQ8WAh4EVGV4dAU25rex5Zyz5rex5Lia6Zu35YWL6JCo5pav5rG96L2m6ZSA5ZSu5pyN5Yqh5pyJ6ZmQ5YWs5Y+4ZAIXDw8WBB4HRW5hYmxlZGgeB1Zpc2libGVoZGRkITwp9YmPUuCyuO57XS0gfKriUY8=" />
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


    <div style="margin-top:5px;margin-left:5px;margin-right:5px;"  >
       <table border="0" style="width:100%;border-bottom:1px solid gray;padding-right:5px;">
        <tr><td class="titlebg"><span>系统设置</span>
        <span class="titleSpan">(机构设置)</span> 
         </td><td align="right">
           </td></tr>
         </table> 
          

         <table   border="1" style="border-collapse:collapse;border:1px solid gray;width:700px;margin-top:2px;margin-bottom:2px;">
          <tr>
          <td>机构全称:</td>
          <td colspan="6">
           深圳八路通汽车科技有限公司
          </td>
           </tr>
           <tr>
           <td>电话1:</td>
           <td> <input name="txtTel1" type="text" value="075583996121" maxlength="15" id="txtTel1" style="width:120px;" /> </td>
           <td>电话2:</td>
           <td> <input name="txtTel2" type="text" value="075583996121" maxlength="15" id="txtTel2" style="width:120px;" /> </td>
           <td>传真:</td>
           <td><input name="txtChuanZhen" type="text" value="0755-27755230" maxlength="15" id="txtChuanZhen" style="width:120px;" /> </td>
           </tr>
           <tr>
           <td>联系地址:</td>
           <td colspan="5"></td>
           </tr>
           <tr>
           <td colspan="6">
           <textarea name="txtAdd" rows="2" cols="20" id="txtAdd" style="width:500px;">宝安区西乡立交万骏汇1033室</textarea>
           </td>
           </tr>
           <tr>
           <td>车牌号码前缀:</td>
           <td><input name="txtChePai" type="text" value="粤B" maxlength="5" id="txtChePai" style="width:120px;" /></td>
           <td>精品费率:</td>
           <td><input name="txtYongPinDiscount" type="text" value="1.66" maxlength="5" id="txtYongPinDiscount" onblur="changeYongPinDiscount(0);" class="easyui-numberbox" data-options="min:1,max:100,precision:2" style="width:120px;" /> </td>
           <td>精品毛利率:</td>
           <td><input name="txtJingPinMaoLiLv" type="text" maxlength="3" id="txtJingPinMaoLiLv" onblur="changeYongPinDiscount(1);" class="easyui-numberbox" data-options="min:0,max:100,precision:0" style="width:120px;" />% </td>
           </tr>
           <tr>
             <td>默认省份:</td>
             <td><input name="txtSheng" type="text" value="广东省" maxlength="10" id="txtSheng" style="width:120px;" /> </td>
             <td>默认市:</td>
             <td><input name="txtShi" type="text" value="深圳市" maxlength="10" id="txtShi" style="width:120px;" /> </td>
             <td>默认区:</td>
             <td><input name="txtQu" type="text" value="宝安区" maxlength="10" id="txtQu" style="width:120px;" /> </td>
           </tr>

           <tr>
           <td colspan="6" style="text-align:center;">
              
              <a onclick="return parWinClose();" id="lnkCancel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkCancel','')">取消</a>
           </td>
           </tr>

         </table>

      
    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="1414B2C1" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWDAKkta/DCQLE49bWBgLzp/2WCALU9IOCBQKM++aPCgLDleaxCgK1psmeAQL6zbbIDwLEkum6BQKA+7KMBAKb+7bDBQKmtLTPAdAOaaX4Wgo1rwKZ3HDqRkX4jrlt" />
</div></form>
    <script language="javascript" type="text/javascript" >

        function changeYongPinDiscount(sort) {

            if (sort == "1") {
                //由毛利率计算精品费率
                if ($("#txtJingPinMaoLiLv").val() != "") {
                    var t = parseInt($("#txtJingPinMaoLiLv").val()) / 100.00;
                    var v = 1.00 - t;
                    if (v == 1) { $("#txtYongPinDiscount").val(1); return false; }

                    if (v == 0) {
                        v = 400;
                    } else if (v > 0) {
                        v = 1.00 / v;
                    }

                    v = v; 
                    $("#txtYongPinDiscount").numberbox('setValue', v.toFixed(2));
                }
            }
            else {
                //由费率计算毛利率
                var v = (parseFloat($("#txtYongPinDiscount").val()) - parseFloat(1)) / parseFloat($("#txtYongPinDiscount").val());
                v = v * 100;
                $("#txtJingPinMaoLiLv").val(v.toFixed(0));
            }  
            return true;
        }


      $(changeYongPinDiscount(0));
    </script>

</body>
</html>