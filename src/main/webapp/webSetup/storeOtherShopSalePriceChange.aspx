
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"><title>

</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>

<base target="_self" />
<body>
    <form name="form1" method="post" action="storeOtherShopSalePriceChange.aspx?d=Thu+Jan+08+2015+11%3a49%3a30+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE2ODg3Mzc1MzVkZLhnY0BZFPnw3TcZTW11/vtDyGdP" />
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
        <tr><td class="titlebg"><span>商品信息管理</span>
        <span class="titleSpan">(商品销售价调整)</span> 
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
       <td align="right">商品编码:</td>
       <td align="left"><input name="txtShopId" type="text" id="txtShopId" style="width:150px;" /></td>
       </tr>
       <tr>
       <td align="right">商品名称:</td>
       <td align="left"><input name="txtShopName" type="text" id="txtShopName" style="width:180px;" /></td>
       </tr>
       <tr>
       <td align="right">单位:</td>
       <td align="left"><input name="txtUnit" type="text" readonly="readonly" id="txtUnit" style="width:60px;" /></td>
       </tr>
       <tr>
       <td align="right">当前库存:</td>
       <td align="left"><input name="txtCurrAllQty" type="text" id="txtCurrAllQty" class="easyui-numberbox" data-options="precision:2,groupSeparator:' ',decimalSeparator:','" style="width:80px;" /></td>
       </tr>
       <tr>
       <td  align="right">原销售价:</td>
       <td align="left"><input name="txtOrigPrice" type="text" id="txtOrigPrice" class="easyui-numberbox" data-options="precision:2,groupSeparator:' ',decimalSeparator:','" style="width:80px;" /></td>
       </tr>
       <tr>
       <td  align="right">新销售价:</td>
       <td align="left"><input name="txtSalePrice" type="text" id="txtSalePrice" class="easyui-numberbox" data-options="precision:2,groupSeparator:' ',decimalSeparator:','" style="width:80px;" /></td>
       </tr>
       <tr>
       <td colspan="2"  style="height:150px;"></td>
       </tr>
     </table>
     <table  width="450px">
       <tr> 
       <td colspan="2" align="center">

           <a id="lnkSea" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSea','')">查询</a>
           <a onclick="return saveCheck();" id="lnkSave" disabled="disabled" class="easyui-linkbutton">修改</a>
           <a onclick="return winClose();" id="lnkCancel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkCancel','')">取消</a>
        </td>
       </tr>
       </table>  
       </div>
    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="982081F4" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWCQK7mcEQAqi82IEEAricuNgFAviHzd0JArvumPEJAtaJ3+cBAqHk8+wDAsDZi44LAqa0tM8BYMv4FlZSWBBUnjDMWsJogp7AARI=" />
</div></form>


    <script language="javascript" type="text/javascript">

        var btnFlag = "0";
        function saveCheck() {
            //删除前进行验证操作
            if (btnFlag == "0") { btnFlag = "1"; } else {return false;}
             
            $.messager.confirm('修改销售价格', '你确定修改销售价?', function (r) {
                if (r) {
                    __doPostBack('lnkSave', '');
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