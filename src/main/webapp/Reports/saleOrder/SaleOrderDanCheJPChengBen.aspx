
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"><title>

</title> <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../js/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<style type="text/css">
.HeJiCss td
{
      font-size:16px;
    font-weight:bold;
    
    
    }
</style>
<body>
    <form name="form1" method="post" action="SaleOrderDanCheJPChengBen.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTA5MjQ5MjQ5OWRkvZowaqAaail2hKcP249AJGTsbYc=" />
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


    <div style="margin-left: 5px;">
        <div>
            <table border="0" style="width: 98%; border-bottom: 1px solid #b8b8b8;">
                <tr>
                    <td class="titlebg">
                        <span>单车成本分析报表</span>(销售)
                    </td>
                    <td align="right">
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <!--按钮区域 start-->
            <table border="0" cellpadding="0" cellspacing="0"  style="margin-top: 3px; width: 700px;">
                <tr>
                    <td>
                        统计年月
                    </td>
                    <td>
                        <input name="txtSearchMonth" type="text" id="txtSearchMonth" class="easyui-datebox" />
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                        <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
                            
                        <a id="lnkExcel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkExcel','')">Excel</a>
                    </td>
                </tr>
            </table>
            <!--按钮区域 end-->
        </div>
    </div>
    <!--数据区域 end-->
    <div style="margin:20px;">
        <div style="width: 48% ; float:left;" >
            
        </div>
        <div style="width: 48% ; float:left">
            <img id="ChartJP" src="/sag/ChartImg.axd?i=chart_0_0.png&amp;g=c3ca17214f8c47f4a5abb4ed676a172f" alt="" style="height:300px;width:414px;border-width:0px;" />
        </div>
    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="F6C68BB3" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWBAKxzcbEDwKRtO6HBQKpi4nBBQK87en2BIQTHm57U8McJ8++7PXqXVlL/OK9" />
</div></form>
</body>
</html>