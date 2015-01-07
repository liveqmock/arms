<html>
<head><title>
	配件订货模块
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=17a48e594e374bee9428a515058eb666" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=17a48e594e374bee9428a515058eb666" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=17a48e594e374bee9428a515058eb666" type="text/javascript"></script><link href="../style/common.css?v=17a48e594e374bee9428a515058eb666" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="storeOtherOrderBill.aspx?busiType=customManage&amp;busiGuid=3901db63-9379-4ef2-8ace-67bf172a5559&amp;d=Mon+Jan+05+2015+14%3a59%3a38+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTIwMjU0OTcxMDYPZBYCAgEPZBYEAgsPDxYEHgdFbmFibGVkaB4HVmlzaWJsZWhkZAIMDw8WBB8AaB8BaGRkZJgAJ/rhoGijcKl6WynPrwQ/uJgD" />
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
     <table border="0" style="width:960px;border-bottom:1px solid #b8b8b8;"">
        <tr>
         <td class="titlebg"><span>配件管理</span>(订货单)</td>
         <td align="right"></td>
        </tr>
     </table> 
    </div> 

    <div id="divMain" >
     <table border="0" width="945px" >
      <tr>
      <td>订货单号:</td>
      <td>
      <input name="txtHidBusiGuid" type="text" id="txtHidBusiGuid" style="display:none;" />
      <input name="txtHidBusiType" type="text" id="txtHidBusiType" style="display:none;" />
      <input name="txtOrerBillNo" type="text" value="等待生成中" readonly="readonly" id="txtOrerBillNo" /> </td>
      <td>车主名称:</td>
      <td><input name="txtCheZhuName" type="text" id="txtCheZhuName" style="width:130px;" /> </td>
      <td>车牌号码:</td>
      <td ><input name="txtChePaiHaoMa" type="text" id="txtChePaiHaoMa" style="width:100px;" /></td>
      <td>车架号码:</td>
      <td style="width:180px;"><input name="txtCheJiaHaoMa" type="text" id="txtCheJiaHaoMa" style="width:100%" /> </td>
      </tr>

      <tr>
      <td colspan="2" style="font-size:12px;font-weight:bold;color:Red;">单据状态:<span id="labStatus"></span> </td>
      <td>备 注:</td>
      <td colspan="5">
      <input name="txtBeiZhu" type="text" maxlength="100" id="txtBeiZhu" style="width:100%" />
      </td>
      </tr>


     </table> 

    </div>

<!--按钮信息 satrt-->
       <div id="divBtnInfo">
            <table border="0"  style="width:945px;background-color:#e4e4e4;"  >
                <tr>  
                   <td>订货需求明细</td>
                    <td align="right">                                              
                       <a onclick="return shopAdd();" id="lnkAdd" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'" href="javascript:__doPostBack('lnkAdd','')">商品信息</a>
                       <a onclick="return saveCheck();" id="lnkSave" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-save'" href="javascript:__doPostBack('lnkSave','')">保存</a>
                       
                       <a id="lnkExa" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'" href="javascript:__doPostBack('lnkExa','')">传送</a>
                       
                       
                       
                       

                       <a onclick="return parWinClose();"   id="lnkClose" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-cancel'"  >退出</a>
                    </td>
                </tr>
            </table>
        </div>
          
<!--按钮信息 satrt-->

    <!--明细数据 start-->
    <div id="divDetail">
    
    <table  width="945px" border="1" cellspacing="1" cellpadding="0"  
        style="word-break:break-all;border-collapse:collapse;border:1px solid gray;"  >
      <tr>
      <td style="width:30px;">NO.</td>
      <td style="width:50px;">修改</td>
      <td>商品编码</td>
      <td>商品名称</td>
      <td>单位</td>
      <td>适用车型</td>
      <td>品牌</td>
      <td>数量</td>
      <td>库存</td>
      <td>售价</td>
      <td>金额合计</td>
      <td>状态</td>
      <td></td>
     </tr>

     


      <tr>
      <td ></td>
      <td>合计</td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td  style="text-align:right;"></td>
      <td></td>
      <td></td>
      <td  style="text-align:right;"></td>
      <td></td>
      <td></td>
     </tr>


    </table>

    </div>
    <!--明细数据 end-->

    
    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="2471A420" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWCwLKtdShDAKRstuzBwLDrqqJBwKTnoX1AwKqx+/iBwKUyP1yAv71pKoPAo6Q0d0CAsHZ/5EBAqPt7YEIAtXZo6UOxFoAS9vh4QN7ld2JD9YbeRlobjA=" />
</div></form>



    <script language="javascript" type="text/javascript" >
        function shopAdd() {
            var u = "storeOtherOrderBillChoiceShopInfo.aspx?thisBillGuid=&d=" + new Date();
            var SizeZ = "dialogWidth:800px;dialogHeight:350px;center:yes;help:no;resizable:no;scroll:yes;status:no;";
            var returnValue = window.showModalDialog(u, '', SizeZ);
            //关闭当前窗体
            location.href = "storeOtherOrderBill.aspx?thisBillGuid=&d=" + new Date();
            return false; 
           
           }



           function mdfInfo(thisDetailGuid) { 

               //修改信息
               var u = "storeOtherOrderBillChoiceShopMdfByThisDetailGuid.aspx?billGuid=&detailGuid=" + thisDetailGuid + "&d=" + new Date();
               var SizeZ = "dialogWidth:550px;dialogHeight:550px;center:yes;help:no;resizable:no;scroll:yes;status:no;";
               var returnValue = window.showModalDialog(u, '', SizeZ);
               //关闭当前窗体
               location.href = "storeOtherOrderBill.aspx?thisBillGuid=&d=" + new Date();
               return false;
           }



           var btnFlag = "0";
           function saveCheck() {
               if (btnFlag == "0")
               { btnFlag = "1"; }
               else {
                   return false;
               }

               return true;
           }



           function billDaoHuo(thisDetailGuid, type) {
               if (btnFlag == "0") { btnFlag = "1"; } else {   return false;    }

               if (confirm("确认到货?")) {
                   $.get("storeOtherOrderBillExec.aspx?type=orderDetailDaoHuo&thisBillGuid=&d=" + new Date(), {
                       daoHuoType: type,
                       thisDetailGuid: thisDetailGuid
                   }, function (data) {
                       if (data == "ok") {
                           alert('到货成功！');
                           location.href = "storeOtherOrderBill.aspx?thisBillGuid=&d=" + new Date();
                       } else {
                           alert(data);
                           btnFlag = "0";
                       }
                   });
               }

               return false;
           }



           $(function () {
               if ("1" == "1") {
                   $(".daoHuoBtn").css("display","none");
               }
           });
    </script>

</body>
</html>