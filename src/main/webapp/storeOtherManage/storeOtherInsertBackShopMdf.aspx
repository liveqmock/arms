
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>

</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>

<base target="_self" />
<body>
    <form name="form1" method="post" action="storeOtherInsertBackShopMdf.aspx?billGuid=2f03989e-3401-45a8-9dc7-58a8d2bde1a4&amp;detailGuid=f2faab84-e257-4e7d-84e9-c28918eee380" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE3ODc1MTc1NTQPZBYCAgMPZBYMAgEPDxYCHgRUZXh0BQ9DR1RIMjAxNTAxMDgwMDJkZAIDDw8WAh8ABQo5MDM0MTEwMDExZGQCBQ8PFgIfAAUV5rK55bqV5aOz5pS+5rK56J665aGeZGQCBw8PFgIfAGVkZAIPDw8WAh4HVmlzaWJsZWhkZAITDw8WAh8BaGRkZCJPV0khEpUF6Rv6/LDRvsX3/lFz" />
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


     <div  style="margin-left;10px;"> 
     <div > 
        <table border="0" style="width:100%;">
        <tr><td class="titlebg"><span>配件管理</span>
        <span class="titleSpan">(入库单退库操作-明细修改)</span> 
         </td><td align="right">
           </td></tr>
         </table> 
     </div>
     <div>
       <table border="0"  style="background-color:#eaf2ff;width:500px;margin-left:10px;border:1px solid gray;" >
       <tr>
       <td colspan="2" style="height:20px;"></td>
       </tr>
       <tr>
       <td align="right">单号:</td>
       <td align="left"><input name="txtBillNo" type="text" value="CGTH20150108002" readonly="readonly" id="txtBillNo" style="width:120px;" /> </td>
       </tr>
       <tr>
       <td align="right">商品编码:</td>
       <td align="left"><input name="txtShopId" type="text" value="9034110011" readonly="readonly" id="txtShopId" style="width:150px;" /></td>
       </tr>
       <tr>
       <td align="right">商品名称:</td>
       <td align="left"><input name="txtShopName" type="text" value="油底壳放油螺塞" readonly="readonly" id="txtShopName" style="width:180px;" /></td>
       </tr>
       <tr>
       <td align="right">单位:</td>
       <td align="left"><input name="txtUnit" type="text" readonly="readonly" id="txtUnit" style="width:60px;" /></td>
       </tr>
       <tr>
       <td align="right">数量:</td>
       <td align="left"><input name="txtQty" type="text" value="1.00" id="txtQty" class="easyui-numberbox" data-options="precision:2,groupSeparator:' ',decimalSeparator:','" style="width:80px;" /></td>
       </tr>
       <tr>
       <td  align="right">退库价:</td>
       <td align="left"><input name="txtInPrice" type="text" value="8.900" id="txtInPrice" class="easyui-numberbox" data-options="precision:2,groupSeparator:' ',decimalSeparator:','" style="width:80px;" /></td>
       </tr>
       <tr>
       <td  align="right">备注:</td>
       <td align="left"><textarea name="txtRemarks" rows="2" cols="20" id="txtRemarks" style="height:80px;width:240px;"></textarea></td>
       </tr>
       <tr>
       <td colspan="2"  style="height:150px;"></td>
       </tr>
     </table>
     <table  width="450px">
       <tr> 
       <td colspan="2" align="center">
           
           <a onclick="return winClose();" id="lnkCancel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkCancel','')">取消</a>
           
       </td>
       </tr>
       </table>  
       </div>
    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="6E484AFF" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWCQLW15KcAQLa9PCNDgKovNiBBAK4nLjYBQL4h83dCQKc+5rCBQK97IykCQKZvM/mBAKmtLTPASHlqANP5V/5BMeRnDLTxH9zfjIJ" />
</div></form>


    <script language="javascript" type="text/javascript">

        function saveCheck() {
            //删除前进行验证操作
            if ($("#txtRemarks").val().length > 200) {
                alert('备注不能过长！');
                return false;
            }

           if ($("#txtQty").val() == "0.00") {
                alert("数量不能为零!");
                return false;
            }

            __doPostBack('lnkSave','');
            return false;
        }


        function delCheck() {
            $.messager.confirm('删除', '您确定删除此项目?', function (r) {
                if (r) {
                    __doPostBack('lnkDel', '');
                }
            });
            return false;
        }

        function winClose() {
            window.returnValue = "1";
            window.opener = null;
            window.close();
            return false;
        }

         

    </script>

</body>
</html>