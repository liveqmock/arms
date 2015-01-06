
 
<html>
<head><title>
	维修物料折扣下载
</title>


    <style type="text/css" >
       
       td
       {
       	 white-space:nowrap;
       	}
       	
       	
    </style>

 <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../JS/Frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../JS/Frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../JS/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="saleAfterWeiXiuWuLiaoZheKouSea.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTIzMzAxODg3Ng9kFgICAw9kFgICEA8WAh4LXyFJdGVtQ291bnRmZGSBptOyIsxou4p9HfRPoIoUq6v7mA==" />
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


    <div style="margin-top:5px;"> 
       <table border="0" style="width:1000px;border-bottom:1px solid #b8b8b8;"">
        <tr><td class="titlebg"><span>售后报表</span>(维修物料折扣报表)</td>
            <td align="right">
            </td></tr>
      </table> 


      <!--查询条件 start-->
       <table border="0">
       <tr>
       <td>入厂时间:</td><td><input name="txtRuChangDate1" type="text" id="txtRuChangDate1" class="easyui-datebox" /></td>
       <td><input name="txtRuChangDate2" type="text" id="txtRuChangDate2" class="easyui-datebox" /></td>
       <td>维修单号:</td><td><input name="txtWeiXiuBillNo" type="text" maxlength="25" id="txtWeiXiuBillNo" /> </td>
       <td>车主名称:</td><td><input name="txtCheZhuName" type="text" maxlength="25" id="txtCheZhuName" /> </td>
       <td>服务顾问:</td><td><input name="txtFuWuGuWen" type="text" maxlength="25" id="txtFuWuGuWen" />  </td>
       </tr>
       <tr>
       <td>出厂时间:</td><td><input name="txtChuChangDate1" type="text" id="txtChuChangDate1" class="easyui-datebox" /></td>
       <td><input name="txtChuChangDate2" type="text" id="txtChuChangDate2" class="easyui-datebox" /></td>
       <td>商品编码:</td><td><input name="txtShopId" type="text" maxlength="25" id="txtShopId" /></td>
       <td>商品名称:</td><td><input name="txtShopName" type="text" maxlength="25" id="txtShopName" /></td>
       <td>商品区分:</td><td><input name="txtShangPinQuFen" type="text" maxlength="30" id="txtShangPinQuFen" /> </td>
       </tr>
       

       <tr>
       <td>产值时间:</td><td><input name="txtChanZhiDate1" type="text" value="2015-1-6" id="txtChanZhiDate1" class="easyui-datebox" /></td>
       <td><input name="txtChanZhiDate2" type="text" value="2015-1-6" id="txtChanZhiDate2" class="easyui-datebox" /></td>


       </tr>
       
       <tr>
       <td>机构名称:</td>
       <td colspan="2" style="width:280px;">
          <input name="txtHidGroupId" type="text" value="6018" id="txtHidGroupId" style="display:none;" />
          <input name="txtGroupName" type="text" value="深业雷克" id="txtGroupName" onclick="groupselect();" style="width:100%;" />
       </td>
        <td colspan="2">
       <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
       
       <a id="lnkExcel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkExcel','')">Excel</a>
       </td>

       </tr>


       
       </table>


      <!--查询条件 end-->
      
      <!--数据显示 start-->
      
       <table id="tb" border="1" style="border:1px solid gray;border-collapse:collapse;width:960px;"  >
       <!--按单start-->
        
         <tr>
         <td>NO.</td>
         <td>档案号</td>
         <td>商品编码</td>
         <td>商品名称</td>
         <td>厂牌</td>
         <td>车系名称</td>
         <td>车型代码</td>
         <td>商品区分</td>
         <td>数量</td>
         <td>折后价格</td>
         <td>折前价格</td>
         <td>优惠</td>
         <td>配件成本</td>
         <td>仓位</td>
         <td>材料单位</td>
         <td>帐套类型</td>
         <td>子帐套类型</td>
         <td>保险公司</td>
         <td>维修单号</td>
         <td>服务顾问</td>
         <td>协议单号</td>
         <td>进厂日期</td>
         <td>完工日期</td>
         <td>出厂日期</td>
         <td>开票日期</td>
         <td>客户名称</td>
         <td>车牌号码</td>
         <td>底盘号</td>
         </tr>
        
       </table>
      <!--数据显示 end-->


    <div>
    <!--分页代码start-->
    共0页 当前1页 跳到<input name="txtThisPage" type="text" value="1" id="txtThisPage" style="border:none;border-bottom:1px solid black;width:30px;" />
    <a onclick="return pageGo();" id="lnkPageGo" href="javascript:__doPostBack('lnkPageGo','')">转到</a>
    <!--分页代码end-->
    </div>
    <input name="txtMaxPage" type="text" value="0" id="txtMaxPage" style="display:none;" />


    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="9B3389E7" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWFAKQ3/WSDwKdzMyFDwKC467wBAKFk4qhBwKqx+/iBwKKwNuxBQKz8aTnBgKz8eB4Aqi82IEEAricuNgFApmjj+sGAvbqxd8CApHU4/QMAs6oghoCyomGbAKpi4nBBQK87en2BALvvc5KAoW9wZcMAu6XvvQEIi7dsHywzD/t/sMK3JAJe2pQN6E=" />
</div></form>


               <script language="javascript" type="text/javascript">


                   function groupselect() {
                       var href = "../../Index/groupSelect.aspx";
                       var SizeZ = 'dialogWidth:600px;dialogHeight:450px;center:yes;edge:sunken;help:no;resizable:no;scroll:no;status:no;';
                       var returnValue = window.showModalDialog(href, '', SizeZ);
                       if (returnValue != undefined && returnValue != "") {
                           var s = returnValue.split("|");
                           $("#txtHidGroupId").val(s[0]);
                           $("#txtGroupName").val(s[1]);
                       }

                   }



                   function pageGo() {
                       var t = document.getElementById("txtThisPage");
                       var myReg = /^\d+$/;
                       var pageN = t.value;
                       if (!myReg.test(pageN)) {
                           alert("输入数字无效!请重新输入!");
                           t.value = "";
                           t.focus();
                           return false;
                       }

                       if (parseFloat(t.value) < 1) { t.value = "1"; }

                       if (parseFloat(t.value) > parseFloat(document.getElementById("txtMaxPage").value)) {
                           t.value = document.getElementById("txtMaxPage").value;
                       }

                       __doPostBack('lnkSearch', '');
                       return false;

                   }



                 

    </script>



</body>
</html>