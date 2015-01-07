
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>

</title> <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../js/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<style>
      .clickCSS{
          background-color:#FBEC88;
       }
      .mouseenterCSS{
       background-color:#EAF2FF;
      }
</style>
<body>
    <form name="form1" method="post" action="SaleOrderCaiWuReport.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTYxOTQ0MjI2MGQYAQUWZ3ZTYWxlT3JkZXJDYWlXdVJlcG9ydA9nZBkf49UV0JvDDaH8JqVZxh4fkv7c" />
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


   
     <div style="margin:5px 0 0 5px;">
    <div >
     <table border="0" style="width:98%;border-bottom:1px solid #b8b8b8;">
        <tr><td class="titlebg"><span>财务报表</span>(销售财务报表)
         </td><td align="right">
           订单编号:<input name="txtbillNo" type="text" maxlength="20" id="txtbillNo" style="width:80px;" />
           车主名称:<input name="txtCustName" type="text" maxlength="40" id="txtCustName" style="width:80px;" />
           开票日期:<input name="txtFaPiaoDate1" type="text" value="2014-12-07" id="txtFaPiaoDate1" class="easyui-datebox" style="width:90px;" />
            -<input name="txtFaPiaoDate2" type="text" id="txtFaPiaoDate2" class="easyui-datebox" style="width:90px;" />
           销售顾问:<input name="txtOrder_Salor" type="text" maxlength="20" id="txtOrder_Salor" style="width:90px;" />
           机构名称:<input name="txtGroupNames" type="text" value="深业雷克" id="txtGroupNames" onclick="groupselect()" style="width:90px;" />
           <input type="hidden" name="hidGroupIds" id="hidGroupIds" value="6018" />
           <a onclick="return ajaxSubmit(this);" id="lnkbtnSearch" class="easyui-linkbutton" data-options="plain:false,iconCls:'icon-search'" href="javascript:__doPostBack('lnkbtnSearch','')">查询</a>
                    <a onclick="return ajaxSubmit(this);" id="lnkbtnExcel" class="easyui-linkbutton" data-options="plain:false,iconCls:'icon-excel'" href="javascript:__doPostBack('lnkbtnExcel','')">导出</a>
                    
           </td></tr>
     
         </table> 

    </div> 
  </div>
    <div style=" margin-top:10px; width:98%;background:#efefef; overflow:auto; height:520px;">
        
        <div>

</div>
    </div>
     <div>
                <!--分页代码start-->
                共0页 当前1页 跳到<input name="txtThisPage" type="text" value="1" id="txtThisPage" style="height:16px;width:30px;border-bottom: 1px solid black; border-left-style: none; border-left-color: inherit; border-left-width: medium; border-right-style: none; border-right-color: inherit; border-right-width: medium; border-top-style: none; border-top-color: inherit; border-top-width: medium;" />
                <a onclick="return pageGo(this);" id="lnkPageGo" href="javascript:__doPostBack('lnkPageGo','')">转到</a>
                <!--分页代码end-->
                <input type="hidden" name="HidAllResult" id="HidAllResult" />
            </div>
            <input name="txtMaxPage" type="text" id="txtMaxPage" style="display: none;" />
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="58773D88" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWDgLp04nkBgLa9PD0AgLxmfnCDQKzn5qQCQKzn5aQCQLr+9H8BgLy6sPyAQKalaGpBgKU5vu4AwLZkqmUDALvvc5KAoW9wZcMAq6t7s0HAu6XvvQEEtzig+9SSpRJqxwecVsvUbVIO+I=" />
</div></form>
    
</body>
</html>
 <script language="javascript" type="text/javascript">
   
     function pageGo(obj) {
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
        return ajaxSubmit(obj);


         

     }
     function groupselect() {
         var href = "../../index/groupSelect.aspx";
         var SizeZ = 'dialogWidth:600px;dialogHeight:450px;center:yes;edge:sunken;help:no;resizable:no;scroll:no;status:no;';
         var returnValue = window.showModalDialog(href, '', SizeZ);
         if (returnValue != undefined && returnValue != "") {
             var s = returnValue.split("|");
             $("#hidGroupIds").val(s[0]);
             $("#txtGroupNames").val(s[1]);
         }

     }
     $(function(){
         $("#gvSaleOrderCaiWuReport > tbody >tr").mouseenter(function(){
               
               if($(this).hasClass("clickCSS")){

               }else{
                 $(this).addClass("mouseenterCSS");
               }
               
           })
               .mouseleave(function(){
             
            if($(this).hasClass("clickCSS")){

              }else{
                 $(this).removeClass("mouseenterCSS");
               }
              
          })
              .click(function(){
                if($(this).hasClass("clickCSS")){
                 $(this).removeClass("clickCSS");
              }else{
               $(this).removeClass("mouseenterCSS");
               $(this).addClass("clickCSS");
              }
          });
      });

    </script>