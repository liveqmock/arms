

<html>
<head><title>
	客户台次统计
</title>
      <style type="text/css">
       td  { white-space:nowrap;}
    </style>
 <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../JS/Frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../JS/Frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../JS/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="customTaiCiTongJi.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE1NjE1OTAwMTlkGAEFHl9fQ29udHJvbHNSZXF1aXJlUG9zdEJhY2tLZXlfXxYDBQtjaGtTYWxlRGF0ZQUMY2hrTkppbkNoYW5nBQ5jaGtKaWVTdWFuSmluRbhQ9wHhoqHT/zIXCQoPbnuLYIX5" />
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
        <tr><td class="titlebg"><span>客服报表</span>(台次查询报表)
            </td>
            <td align="right">
            </td></tr>
      </table> 
      
      <!--查询条件 start-->
      <table border="0">
        <tr>
        <td>查询类型:</td>
        <td colspan="2"><select name="ddlCustomSort" id="ddlCustomSort" style="width:150px;">

</select> </td>
        <td><input id="chkSaleDate" type="checkbox" name="chkSaleDate" />销售日期:</td>
        <td><input name="txtSaleDate1" type="text" id="txtSaleDate1" class="easyui-datebox" /></td>

        <td>~</td>
         <td><input name="txtSaleDate2" type="text" id="txtSaleDate2" class="easyui-datebox" /></td>
        </tr>
        <tr>
        <td>进厂日期:</td>  
        <td><input name="txtRuChangDate1" type="text" value="2014-1-6" id="txtRuChangDate1" class="easyui-datebox" /></td>         
        <td>~<input name="txtRuChangDate2" type="text" value="2015-1-6" id="txtRuChangDate2" class="easyui-datebox" /></td>
         <td><input id="chkNJinChang" type="checkbox" name="chkNJinChang" />该时段没进厂:</td>
        <td><input name="txtNRuChangDate1" type="text" id="txtNRuChangDate1" class="easyui-datebox" /></td>
        <td>~</td>
         <td><input name="txtNRuChangDate2" type="text" id="txtNRuChangDate2" class="easyui-datebox" /></td>
        
        </tr>

        <tr>
        <td>进厂次数:</td>  
        <td><input name="txtJinChangCiShu1" type="text" value="1" id="txtJinChangCiShu1" class="easyui-numberbox" min="1" /></td>         
        <td>~<input name="txtJinChangCiShu2" type="text" value="999999" id="txtJinChangCiShu2" class="easyui-numberbox" min="1" /></td>
         <td><input id="chkJieSuanJinE" type="checkbox" name="chkJieSuanJinE" />结算金额:</td>
        <td><input name="txtJieSuanJinE1" type="text" value="0" id="txtJieSuanJinE1" class="easyui-numberbox" min="1" /></td>
        <td>~</td>
         <td><input name="txtJieSuanJinE2" type="text" value="99999999" id="txtJieSuanJinE2" class="easyui-numberbox" min="1" /></td>
        
        <td >
         <a onclick="return searchCheck();" id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
         <a onclick="return searchCheck();" id="lnkExcel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkExcel','')">Excel</a>
        
        </td>
        </tr>
          
      </table>
      <!--查询条件 end-->

      <!--数据显示 start-->
       <table  border="1" style="border:1px solid gray;border-collapse:collapse;"  >
               <tr>
          <td>NO.</td>
          <td>厂牌</td>
          <td>车牌号码</td>
          <td>车系</td>
          <td>车型代码</td>
          <td>车架号码</td>
          <td>车主名称</td>
          <td>车主电话</td>
          <td>车主手机</td>
          <td>联系人名称</td>
          <td>联系人电话</td>
          <td>联系人手机</td>
          <td>购车日期</td>
          <td>自店销售</td>
          <td>最后来厂时间</td>
          <td>来厂次数</td>
          <td>结算金额</td>
          <td>材料费</td>
          <td>工时费</td>
          <td>材料券</td>
          <td>工时券</td>
          </tr>
        
       
       </table>
      <!--数据显示 end-->
   <div>
    <!--分页代码start-->
    共0页 当前1页 跳到<input name="txtThisPage" type="text" value="1" id="txtThisPage" style="border:none;border-bottom:1px solid black;width:30px;" />
    <a onclick="return pageGo();" id="lnkPageGo" href="javascript:__doPostBack('lnkPageGo','')">转到</a>
    <!--分页代码end-->
    
    <input name="txtMaxPage" type="text" id="txtMaxPage" style="display:none;" />

    </div>



    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="EB9B5846" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWEwLa1YSLBgLZs93ECwKS7azNDgKS7ejeCAKdzMyFDwKC467wBAK5n+uuDQKYtJWoDAKYtNmWAgLZ8fTTDwLa8fTTDwLM7Y//DALwtp7CCAKLoLzXAgKpi4nBBQK87en2BALvvc5KAoW9wZcMAu6XvvQEmBYBEIeRQNd1kow9sFJCtlQi24I=" />
</div></form>

                <script language="javascript" type="text/javascript">

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



                    var btnFlag = "0";
                    function searchCheck() {
                        if (btnFlag == "0") { btnFlag = "1"; return true; } else { alert('禁止多次进行提交操作!'); }
                        return false;
                    }


    </script>

</body>
</html>