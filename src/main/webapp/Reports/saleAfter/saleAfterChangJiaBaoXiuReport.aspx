


<html>
<head><title>
	厂家保修月报
</title> <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../js/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="saleAfterChangJiaBaoXiuReport.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTI3ODEyMTQ3NQ9kFgICAw9kFgYCCw8PFgIeB0VuYWJsZWRnZGQCDQ8PFgIfAGdkZAIPDxYCHgtfIUl0ZW1Db3VudAIGFgwCAQ9kFgJmDxUOATEOSkREMjAxNTAxMDYwMDgJ57KkTU1IODExEUpUSEJKMUdHNkQyMDIyMzc5Bjg1NS4wMAcxMzc5LjIwBzIyMzQuMjAHOTkzLjMwNQAACeW8oOWFiOi1ngQwLjAwAAzmt7HkuJrpm7flhYtkAgIPZBYCZg8VDgEyDkpERDIwMTUwMTA0MDAzCeeypEJGNjMyTRFKVEhCVzQ2RzRBMjAzMzU4OAczMzc1LjAwBjU0MC4wMAczOTE1LjAwBzM3MS4wMjcAAAnlvKDlhYjotZ4EMC4wMAAM5rex5Lia6Zu35YWLZAIDD2QWAmYPFQ4BMw5KREQyMDE1MDEwNjAwNwnnsqRCN1dCODgRSlRKWkExMUE4RDI0NDEwNjEGOTAwLjAwBjgzOS4wMAcxNzM5LjAwBzU1OC4xMjYAAAnlvKDlhYjotZ4EMC4wMAAM5rex5Lia6Zu35YWLZAIED2QWAmYPFQ4BNA5KREQyMDE1MDEwNTAzMQnnsqRCOFdHMTMRSlRKWkExMUE2RDI0NDQ0ODkGOTAwLjAwBjgzOS4wMAcxNzM5LjAwBzU1NS40MjYAAAnpmYjnp4vms6IEMC4wMAAM5rex5Lia6Zu35YWLZAIFD2QWAmYPFQ4BNQ5KREQyMDE1MDEwNjAwNQnnsqRCQ0s0ODMRSlRIQkoxR0czRTIwNDcyNDIGNjMwLjAwBzEwNzIuMjAHMTcwMi4yMAc3NjQuMDA1AAAJ5YiY5p2w55SfBDAuMDAADOa3seS4mumbt+WFi2QCBg9kFgJmDxUOATYOSkREMjAxNTAxMDYwMDkJ57KkQlk5MjZZEUpUSlpBMTFBMEUyNDU5NDYwBjc2NS4wMAY1MTcuMjAHMTI4Mi4yMAczNDcuNzA1AAAJ5byg5YWI6LWeBDAuMDAADOa3seS4mumbt+WFi2RkJG0Qs+EaftHD9GASQ31Cjpz6h8Y=" />
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
     <table border="0" style="width:98%;border-bottom:1px solid #b8b8b8;">
        <tr><td class="titlebg"><span>售后报表</span>(厂家保修)
         </td><td align="right">
           </td></tr>
         </table> 
    </div> 
    <div>
    <!--按钮区域 start-->
    <table border="0" cellpadding="0" cellspacing="0" style="margin-top:3px;width:700px;" >
       <tr>
       <td>
       <select name="ddlDateSort" id="ddlDateSort" style="width:100px;">
	<option selected="selected" value="结算日期">结算日期</option>
	<option value="出厂日期">出厂日期</option>
	<option value="产值日期">产值日期</option>

</select>
       </td>
         <td><input name="txtDateStart" type="text" value="2015-1-6" id="txtDateStart" class="inputCss easyui-datebox" style="width:100px;height:20px;" /></td>
         <td>~</td>
         <td><input name="txtDateEnd" type="text" value="2015-1-6" id="txtDateEnd" class="inputCss easyui-datebox" style="width:100px;height:20px;" /></td>
          <td>
            <input name="txtHidGroupId" type="text" value="6018," id="txtHidGroupId" style="display:none;" />
            <input name="txtGroupName" type="text" value="深业雷克," id="txtGroupName" onClick="groupselect()" style="width:150px;height:20px;" />
         </td>
         <td>
            <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
            <a id="lnkExcel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkExcel','')">Excel</a>
         </td>
       </tr>
    </table>
    <!--按钮区域 end-->
    </div>

      
      <div>
        <!--数据区域 satrt-->
        <table  border="1" id="tb" style="border:1px solid gray;border-collapse:collapse;width:98%;margin-top:3px;"  >
           
            <tr>
             <td style="width:30px;">NO.</td>
             <td>维修单号</td>
             <td>车牌号</td>
             <td>车架号码</td>
             <td>维修工时</td>
             <td>维修材料</td>
             <td>维修金额</td>
             <td>配件成本</td>
             <td>核价金额</td>
             <td>核价日期</td>
             <td>SA</td>
             <td>已收款</td>
             <td>备注</td>
             <td>机构名称</td>
            </tr>
           
            <tr>
             <td style="text-align:center">1</td>
             <td>JDD20150106008</td>
             <td>粤MMH811</td>
             <td>JTHBJ1GG6D2022379</td>
             <td style="text-align:right;">855.00</td>
             <td style="text-align:right;">1379.20</td>
             <td style="text-align:right;">2234.20</td>
             <td style="text-align:right;">993.305</td>
             <td style="text-align:right;"></td>
             <td></td>
             <td>张先赞</td>
             <td style="text-align:right;">0.00</td>
             <td></td>
             <td>深业雷克</td>
            </tr>
            
            <tr>
             <td style="text-align:center">2</td>
             <td>JDD20150104003</td>
             <td>粤BF632M</td>
             <td>JTHBW46G4A2033588</td>
             <td style="text-align:right;">3375.00</td>
             <td style="text-align:right;">540.00</td>
             <td style="text-align:right;">3915.00</td>
             <td style="text-align:right;">371.027</td>
             <td style="text-align:right;"></td>
             <td></td>
             <td>张先赞</td>
             <td style="text-align:right;">0.00</td>
             <td></td>
             <td>深业雷克</td>
            </tr>
            
            <tr>
             <td style="text-align:center">3</td>
             <td>JDD20150106007</td>
             <td>粤B7WB88</td>
             <td>JTJZA11A8D2441061</td>
             <td style="text-align:right;">900.00</td>
             <td style="text-align:right;">839.00</td>
             <td style="text-align:right;">1739.00</td>
             <td style="text-align:right;">558.126</td>
             <td style="text-align:right;"></td>
             <td></td>
             <td>张先赞</td>
             <td style="text-align:right;">0.00</td>
             <td></td>
             <td>深业雷克</td>
            </tr>
            
            <tr>
             <td style="text-align:center">4</td>
             <td>JDD20150105031</td>
             <td>粤B8WG13</td>
             <td>JTJZA11A6D2444489</td>
             <td style="text-align:right;">900.00</td>
             <td style="text-align:right;">839.00</td>
             <td style="text-align:right;">1739.00</td>
             <td style="text-align:right;">555.426</td>
             <td style="text-align:right;"></td>
             <td></td>
             <td>陈秋波</td>
             <td style="text-align:right;">0.00</td>
             <td></td>
             <td>深业雷克</td>
            </tr>
            
            <tr>
             <td style="text-align:center">5</td>
             <td>JDD20150106005</td>
             <td>粤BCK483</td>
             <td>JTHBJ1GG3E2047242</td>
             <td style="text-align:right;">630.00</td>
             <td style="text-align:right;">1072.20</td>
             <td style="text-align:right;">1702.20</td>
             <td style="text-align:right;">764.005</td>
             <td style="text-align:right;"></td>
             <td></td>
             <td>刘杰生</td>
             <td style="text-align:right;">0.00</td>
             <td></td>
             <td>深业雷克</td>
            </tr>
            
            <tr>
             <td style="text-align:center">6</td>
             <td>JDD20150106009</td>
             <td>粤BY926Y</td>
             <td>JTJZA11A0E2459460</td>
             <td style="text-align:right;">765.00</td>
             <td style="text-align:right;">517.20</td>
             <td style="text-align:right;">1282.20</td>
             <td style="text-align:right;">347.705</td>
             <td style="text-align:right;"></td>
             <td></td>
             <td>张先赞</td>
             <td style="text-align:right;">0.00</td>
             <td></td>
             <td>深业雷克</td>
            </tr>
            
            <tr>
             <td>合计</td>
             <td></td>
             <td></td>
             <td></td>
             <td  style="text-align:right;">7425.00</td>
             <td  style="text-align:right;">5186.60</td>
             <td  style="text-align:right;">12611.60</td>
             <td  style="text-align:right;">3589.594</td>
             <td  style="text-align:right;"></td>
             <td></td>
             <td></td>
             <td  style="text-align:right;">0.00</td>
             <td></td>
             <td></td>
            </tr>
            
         </table>
        <!--数据区域 end-->
      </div>

    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="2E8A6CAB" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWCgKe15f4AgKW/tCRCwKPoOTRCQLinozVCQLq4PrfDQK0ltSgDwLOqIIaAsqJhmwCqYuJwQUCvO3p9gQTVpNtc3zLhoPWGHVA914PSC1SSA==" />
</div></form>


        <script  language="javascript" type="text/javascript">

            function groupselect() {
                var href = "../../index/groupSelect.aspx";
                var SizeZ = 'dialogWidth:600px;dialogHeight:450px;center:yes;edge:sunken;help:no;resizable:no;scroll:no;status:no;';
                var returnValue = window.showModalDialog(href, '', SizeZ);
                if (returnValue != undefined && returnValue != "") {
                    var s = returnValue.split("|");
                    $("#txtHidGroupId").val(s[0]);
                    $("#txtGroupName").val(s[1]);
                }

            }

    </script>


</body>
</html>