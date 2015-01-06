

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>

</title>
    <style type="text/css">
    td
    {
      white-space:nowrap;
    }
    </style>

 <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../JS/Frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../JS/Frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../JS/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="saleAfter_newWeiXiuXiangMuSet.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTEwNzg2MTI1NTNkZKor2HqOzlZh4N+HhksM2kRxM40g" />
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
        <tr><td class="titlebg"><span>维修设置</span>(维修项目设置)
            </td>
            <td align="right">
            </td></tr>
      </table> 

      <!--查询条件 start-->
      <table border="0">
       <tr>
       <td>项目编码:</td><td><input name="txtWeiXiuXiangMuNo" type="text" maxlength="30" id="txtWeiXiuXiangMuNo" /> </td>
       <td>项目内容:</td><td><input name="txtWeiXiuXiangMuNeiRong" type="text" maxlength="60" id="txtWeiXiuXiangMuNeiRong" /> </td>
       <td>车系:</td>    <td><input name="txtCheXi" type="text" maxlength="60" id="txtCheXi" /> </td>

       <td>
       <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
       <a id="lnkExcel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkExcel','')">Excel</a>
       <a onclick="return mdfGongShi('0');" id="lnkWeiXiuXiangMuAdd" class="easyui-linkbutton" href="javascript:__doPostBack('lnkWeiXiuXiangMuAdd','')">维修项目添加</a>
       </td>
       </tr>
      </table>
      <!--查询条件 end-->
        
      <!--数据显示 start-->
      <table id="tb"  border="1" style="border:1px solid gray;border-collapse:collapse;"  >
       <tr>
         <td style="width:20px;">NO.</td>       <td style="width:80px;">项目编码</td>       <td style="width:320px;">项目内容</td>
       </tr>

       

      </table>
      <!--数据显示 end-->

    </div>

    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="A067FDD2" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWBwKblM66DQLwlIz5DAK5xa2GDQLWz/zOAgKpi4nBBQK87en2BALThqvGCVsJhpLX8jzn0DBzvl72hvdhWypn" />
</div></form>

        <script language="javascript" type="text/javascript" >

            var tmp = '#FFFFFF';
            $(function () {
                $('#tb tr').mouseover(function () {
                    tmp = this.style.backgroundColor;
                    this.style.backgroundColor = '#eaf2ff';
                });

                $('#tb tr').mouseout(function () {
                    this.style.backgroundColor = tmp;
                });
            });


            function mdfGongShi(thisId) {
                var u = "saleAfter_newWeiXiuXiangMuSetAdd.aspx?thisId="+thisId+"&d=" + new Date();
                var SizeZ = "height=650,width=850,top=30,left=30,toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=no,status=no";


                var open = returnValue = window.open(u, "维修项目修改", SizeZ);
                    open.focus();
                return false;

            }

 

    </script>

</body>
</html>