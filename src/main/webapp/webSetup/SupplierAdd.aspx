
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	供应商新增 修改
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<style type="text/css" >
 td
 {
 	height:25px;
 	}
 	input,select
 	{
 		width:150px;
 		}
</style>
<body>
    <form name="form1" method="post" action="SupplierAdd.aspx?suppThisId=0b758bca-fd82-45d7-978a-13048e139836&amp;d=Thu+Jan+08+2015+11%3a35%3a29+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTk1NTIwODc1OA9kFgICAw9kFgQCRw8PFgQeB0VuYWJsZWRoHgdWaXNpYmxlaGRkAkkPDxYEHwBnHwFnZGRkwF5r3HryoIm31YjX3uA5Xii78JQ=" />
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


    <div style="position:absolute;top:5px;left:30px">
     <table border="0" style="width:100%;border-bottom:1px solid gray;">
        <tr><td class="titlebg"><span>基础设置</span>
        <span class="titleSpan">(供应商新增、修改)</span> 
         </td><td align="right">
           </td></tr>
         </table> 
      <table border="0">
        <tr>
          <td><span class="requireSpan">*&nbsp;</span>供应商编号:</td><td>
          <input name="txtSuppThisId" type="text" value="0b758bca-fd82-45d7-978a-13048e139836" id="txtSuppThisId" style="display:none;" />
          <input name="txtSuppBianHao" type="text" value="10051004" maxlength="8" id="txtSuppBianHao" /></td>
          <td><span class="requireSpan">*&nbsp;</span>供应商名称:</td><td colspan="3"><input name="txtSuppName" type="text" value="东风本田笋岗办事处" maxlength="60" id="txtSuppName" style="width:380px;" /></td>
        </tr>
        <tr>
          <td>应付期初:</td><td><input name="txtSuppQiChu" type="text" value="0.00" maxlength="10" id="txtSuppQiChu" class="easyui-numberbox" /> </td>
          <td>采购金额:</td><td><input name="txtSuppCaiGouJinE" type="text" value="0.000" maxlength="10" id="txtSuppCaiGouJinE" class="easyui-numberbox" /> </td>
          <td></td><td></td>
        </tr>
        <tr>
          <td>邮政编码:</td><td><input name="txtSuppYouBian" type="text" maxlength="8" id="txtSuppYouBian" /></td>
          <td>通信地址:</td><td colspan="3"><input name="txtSuppDiZhi" type="text" maxlength="100" id="txtSuppDiZhi" style="width:380px;" /></td>
        </tr>
        <tr>
          <td>电话1:</td><td><input name="txtSuppTel1" type="text" maxlength="20" id="txtSuppTel1" /> </td>
          <td>电话2:</td><td><input name="txtSuppTel2" type="text" maxlength="20" id="txtSuppTel2" /> </td>
          <td>电话3:</td><td><input name="txtSuppTel3" type="text" maxlength="20" id="txtSuppTel3" /> </td>
        </tr>
        <tr>
          <td>网络地址:</td><td><input name="txtSuppWangZhi" type="text" maxlength="40" id="txtSuppWangZhi" /> </td>
          <td>电子邮件:</td><td><input name="txtSuppEmail" type="text" maxlength="60" id="txtSuppEmail" /> </td>
          <td>传真:</td><td><input name="txtSuppChuanZhen" type="text" maxlength="20" id="txtSuppChuanZhen" /> </td>
        </tr>
        <tr>
          <td>信誉度:</td><td><input name="txtSuppXinYuE" type="text" maxlength="20" id="txtSuppXinYuE" /> </td>
          <td>税号:</td><td><input name="txtSuppShuiHao" type="text" maxlength="20" id="txtSuppShuiHao" /> </td>
          <td>收款期限:</td><td><input name="txtSuppShouKuanQiXian" type="text" value="0" maxlength="10" id="txtSuppShouKuanQiXian" class="easyui-numberbox" /> </td>
        </tr>
        <tr>
          <td>银行户名:</td><td><input name="txtSuppYinHangHuMing" type="text" maxlength="30" id="txtSuppYinHangHuMing" /> </td>
          <td>开户银行:</td><td><input name="txtSuppKaiHuYinHang" type="text" maxlength="30" id="txtSuppKaiHuYinHang" /> </td>
          <td>付款期限:</td><td><input name="txtSuppFuKuanQiXian" type="text" value="0" maxlength="10" id="txtSuppFuKuanQiXian" class="easyui-numberbox" /> </td>
        </tr>
        <tr>
          <td>银行账号:</td><td><input name="txtSuppYinHangZhangHao" type="text" maxlength="20" id="txtSuppYinHangZhangHao" /> </td>
          <td>建档日期:</td><td><input name="txtSuppJianDangRiQi" type="text" maxlength="20" id="txtSuppJianDangRiQi" /> </td> 
        </tr>
        <tr>
          <td>采购折扣:</td><td><input name="txtSuppCaiGouZheKou" type="text" value="0.00" maxlength="10" id="txtSuppCaiGouZheKou" class="easyui-numberbox" /> </td>
          <td>地区:</td><td><input name="txtSuppDiQu" type="text" maxlength="20" id="txtSuppDiQu" /> </td>
          <td></td><td></td>
        </tr>
        <tr>
        <td>备注:</td>
        <td colspan="5">
        <textarea name="txtSuppRemarks" rows="2" cols="20" id="txtSuppRemarks" style="width:550px;"></textarea>
        </td>
        </tr>
        
        <tr>
        <td colspan="6"><hr /></td>
        </tr>

        <!--联系人信息-->
        <tr>
          <td>姓名:</td><td><input name="txtLXingMing" type="text" maxlength="20" id="txtLXingMing" /> </td>
          <td>性别:</td><td><input name="txtLXingBie" type="text" maxlength="1" id="txtLXingBie" /> </td>
          <td>生日:</td><td><input name="txtLShengRi" type="text" maxlength="20" id="txtLShengRi" /> </td>
        </tr>
        
        <tr>
          <td>职务:</td><td><input name="txtLZhiWu" type="text" maxlength="20" id="txtLZhiWu" /> </td>
          <td>称呼:</td><td><input name="txtLChengHu" type="text" maxlength="20" id="txtLChengHu" /> </td>
          <td>邮件:</td><td><input name="txtLYouJian" type="text" maxlength="20" id="txtLYouJian" /> </td>
        </tr>
        
        <tr>
          <td>电话:</td><td><input name="txtLDianHua" type="text" maxlength="20" id="txtLDianHua" /> </td>
          <td>手机:</td><td><input name="txtLShouJi" type="text" maxlength="20" id="txtLShouJi" /> </td>
          <td></td><td></td>
        </tr>
        
        <tr>
          <td>邮编:</td><td><input name="txtLYouBian" type="text" maxlength="6" id="txtLYouBian" /> </td>
          <td>地址:</td><td colspan="3"><input name="txtLDiZhi" type="text" maxlength="60" id="txtLDiZhi" style="width:360px;" /> </td>
         </tr>
        
        <tr>
          <td>备注:</td><td colspan="6"><input name="txtLRemarks" type="text" maxlength="60" id="txtLRemarks" style="width:590px;" /> </td>
        </tr>
        
        <tr>
          <td colspan="6" align="center">
             
             <a id="btnMdf" class="easyui-linkbutton" href="javascript:__doPostBack('btnMdf','')">修改</a>
             <a onclick="return delCheck();" id="btnDel" class="easyui-linkbutton" href="javascript:__doPostBack('btnDel','')">删除</a>
            <a onclick="return parWinClose();" id="btnCancel" class="easyui-linkbutton" href="javascript:__doPostBack('btnCancel','')">取消</a> 
         </td>
        </tr>
        
        
        
        



      </table>
    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="858C339C" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWJwLzh5XdAgKWnv3pAQKjo91UArWj9MQFAs7LsNQEAvq1u50DArHwoooHAs7L2OMEAt24mO8HAvihtoQCApOL1JkMApfYkaMBAu20wvACAvbMpaEEAqiowZUCAr2VxJoGAuf88r8IAqPVqOsMAtvzwpoDAsXY8PUDAuSsndwLAvLN2fwDAsCZ6rcIAv2Pj/MNAsbhrrcNArmRk4YGAu2Wx68GAs7osrsEAtSP0rwPAuqJwo8NAqvK16MPAobcjIQBAqCaq5ENAqvKt6IDAtGZibMCAqCEmqcKAoyTycQCAouTpcYFApD0z+sFcHnmf34lSFwa9SL/osMy8/rTV0U=" />
</div></form>


    <script language="javascript" type="text/javascript" >

        //数据验证操作
        var btnFlag = "0"; //避免按钮重复点击操作
        function saveCheck(sort) {

            //数据验证

            if (sort == "0") {
                //保存操作

            } else {
                //修改操作

            }
         
        }

    
    </script>

</body>
</html>