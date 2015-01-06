

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>

</title> <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../JS/Frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../JS/Frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../JS/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<style type="text/css" >
    td ,th
    {
    	white-space:nowrap;
      
    	}
    </style>
<body>
    <form name="form1" method="post" action="JiPanCust.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTE1MzE4MTAxN2RktMAi0/c8i/T4luXQlipGsLlBEs0=" />
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
    <table>
     <tr>
  <td>
             车主来源
     </td>
           <td>
                    <input name="txtCheZhuLaiYuan" type="text" id="txtCheZhuLaiYuan" />
                </td>
                  <td>
             车主姓名
     </td>
           <td>
                    <input name="txtCheZhuName" type="text" id="txtCheZhuName" />
                </td>
       
                                <td>
             联系人姓名
     </td>
           <td>
                    <input name="txtLianXiRenName" type="text" id="txtLianXiRenName" />
                </td>
                        <td>
              车主性别
     </td>
           <td>
                    <input name="txtCheZhuXingBie" type="text" id="txtCheZhuXingBie" />
                </td>
     </tr>
          <tr>
                  <td>
              车系
     </td>
           <td>
                    <input name="txtCheXi" type="text" id="txtCheXi" />
                </td>
                                <td>
             厂牌
     </td>
           <td>
                    <input name="txtChangPai" type="text" id="txtChangPai" />
                </td>
                 <td>
             车牌号
     </td>
           <td>
                    <input name="txtChePaiHao" type="text" id="txtChePaiHao" />
                </td>
                  <td>
              发动机号
     </td>
           <td>
                    <input name="txtFaDongJiHao" type="text" id="txtFaDongJiHao" />
                </td>
     </tr>
       <tr>
                  <td>
              车颜色
     </td>
           <td>
                    <input name="txtCheShenYanSe" type="text" id="txtCheShenYanSe" />
                </td>
                                <td>
             证件号码
     </td>
           <td>
                    <input name="txtCheZhuCardNo" type="text" id="txtCheZhuCardNo" />
                </td>
                 <td>
             车主类型
     </td>
           <td>
                    <input name="txtCheZhuSort" type="text" id="txtCheZhuSort" />
                </td>
                  <td>
              车主学历
     </td>
           <td>
                    <input name="txtCheZhuXueLi" type="text" id="txtCheZhuXueLi" />
                </td>
     </tr>
           <tr>
               <td>
             购车时间
     </td>
        
      <td>
                    <input name="txtGouCheDate1" type="text" id="txtGouCheDate1" class="easyui-datebox" />
                </td>
                <td>
                    至
                </td>
                <td>
                    <input name="txtGouCheDate2" type="text" id="txtGouCheDate2" class="easyui-datebox" />
                </td>
                             <td>
             出生日期
     </td>
        
      <td>
                    <input name="txtCheZhuBirthday1" type="text" id="txtCheZhuBirthday1" class="easyui-datebox" />
                </td>
                <td>
                    至
                </td>
                <td>
                    <input name="txtCheZhuBirthday2" type="text" id="txtCheZhuBirthday2" class="easyui-datebox" />
                </td>
     </tr>
         <tr>
               <td>
             最后来厂里程
     </td>
        
      <td>
                    <input name="txtLastLiCheng1" type="text" id="txtLastLiCheng1" class="easyui-datebox" />
                </td>
                <td>
                    至
                </td>
                <td>
                    <input name="txtLastLiCheng2" type="text" id="txtLastLiCheng2" class="easyui-datebox" />
                </td>
                             <td>
             最后一次定保时间
     </td>
        
      <td>
                    <input name="txtLastDingBaoDate1" type="text" id="txtLastDingBaoDate1" class="easyui-datebox" />
                </td>
                <td>
                    至
                </td>
                <td>
                    <input name="txtLastDingBaoDate2" type="text" id="txtLastDingBaoDate2" class="easyui-datebox" />
                </td>
     </tr>
     <tr>
                 <td>
             车架号
     </td>
           <td>
                    <input name="txtCheJiaHao" type="text" id="txtCheJiaHao" />
                </td>
       <td>
                    <a onclick="return Search();" id="lnkbtnSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkbtnSearch','')">查询</a>
                    
       <a id="lnkExcel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkExcel','')">Excel</a>
                </td>     
     </tr>
    </table>
    <div style=" width:100%; overflow:scroll; height:500px;">
           <table border="1" style="border:1px solid gray;border-collapse:collapse;">
           <tr>
                <th>
           车系
                </th>
		<th>车型代码</th>
              <th>
           厂牌
                </th>
                             <th>
           车架号
                </th>
              <th>
           车牌号
                </th>
                             <th>
           发动机号
                </th>
              <th>
           车身颜色
                </th>
                             <th>
           购车日期
                </th>
              <th>
           车主姓名
                </th>
                             <th>
           车主手机
                </th>
              <th>
           车主电话
                </th>
                             <th>
           地址
                </th>
              <th>
           车主性别
                </th>
                    <th>
          证件号码
                </th>
                    <th>
           出生日期
                </th>
                    <th>
           联系人姓名
                </th>
                    <th>
           联系人手机
                </th>
                    <th>
           联系人电话
                </th>
                    <th>
           车主类型
                </th>
                    <th>
           车主学历
                </th>
                               <th>
           车主来源
                </th>
                    <th>
           车主所属行业
                </th>
                               <th>
           最后来厂里程
                </th>
                    <th>
           最后定保时间
                </th>
           </tr>
             
               </table>
    </div>
    <div>
    <!--分页代码start-->
    共0页 当前1页 跳到<input name="txtThisPage" type="text" value="1" id="txtThisPage" style="border:none;border-bottom:1px solid black;width:30px;" />
    <a onclick="return pageGo();" id="lnkPageGo" href="javascript:__doPostBack('lnkPageGo','')">转到</a>
    <!--分页代码end-->
    </div>
    </div>
    
    <input name="txtMaxPage" type="text" id="txtMaxPage" style="display:none;" />
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="7CDDDC06" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWGwKBhdGcDwKpjpOwCwKqx+/iBwKw+fXDDwK72JR6AtbP/M4CAoubrUQCpMa9BgL12MWjAwLb4fqdDAKIvLOhBwLBhua6BgLnjofsBgL9wsTcBwL9wsjcBwKq7JSADwKq7KCADwLozdrUBwK5ibSUBgKdloW9DgK4/6LSCAL+8uS9DgKU5vu4AwK87en2BALvvc5KAoW9wZcMAu6XvvQE/NxQ71AmNBD23ddkWVnCLmzvDtc=" />
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

                return true;

            }
      
    </script>
</body>
</html>