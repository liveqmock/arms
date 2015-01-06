

<html>
<head><title>
	加入采购入库退库报表
</title>
    <style type="text/css">
       td
       {
       	white-space:nowrap;
       	}
    </style>
 <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../JS/Frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../JS/Frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../JS/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="storeOtherInsertReport.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJODgxNTI4MDIyD2QWAgIDD2QWBAIPDxYCHgtfIUl0ZW1Db3VudAIGFgwCAQ9kFgJmDxULJDNlMmE4MjE5LWY0OTItNDdmZS1iMjRiLWYyMGFmNWRkMzU2ZQExCeWFpeW6k+WNlQ5SS0QyMDE1MDEwNjAwNQoyMDE1LzAxLzA2ABxUTUNJ5bm/5bee6Zu25Lu25L6b5bqU5Lit5b+DB0UwMDU1ODMEMy4wMAg0MDAxLjMwMAzmt7HkuJrpm7flhYtkAgIPZBYCZg8VCyQwNzE3M2UwZC1kOGI1LTRlZGQtODk0MC1hMDFmYzJmN2FiZDkBMgnlhaXlupPljZUOUktEMjAxNTAxMDYwMDQKMjAxNS8wMS8wNgAcVE1DSeW5v+W3numbtuS7tuS+m+W6lOS4reW/gwdFMDA1NTgyBDYuMDAJMTM0ODIuODAwDOa3seS4mumbt+WFi2QCAw9kFgJmDxULJGQ4NTU0N2JlLTRmOTUtNDVkNS05N2ZkLWY3ODY3M2RkNmMzNwEzCeWFpeW6k+WNlQ5SS0QyMDE1MDEwNjAwMwoyMDE1LzAxLzA2ABxUTUNJ5bm/5bee6Zu25Lu25L6b5bqU5Lit5b+DB1MwMDMyMzQFOTguMDAJMjQwMzguODAwDOa3seS4mumbt+WFi2QCBA9kFgJmDxULJDBmNTkxYjY3LTY1ODEtNGI5YS1iY2M3LTI0OGUyYmYyYjRjNgE0CeWFpeW6k+WNlQ5SS0QyMDE1MDEwNjAwMgoyMDE1LzAxLzA2ACflub/lt57mtbfplYHot4Pmsb3ovabphY3ku7bmnInpmZDlhazlj7gGODA3MzI4BDQuMDAIMjE1NS4wMDAM5rex5Lia6Zu35YWLZAIFD2QWAmYPFQskZDUyZmU4YTgtZDVkZS00OWEyLTg0YWItMjg5ZGM0NjVjZjhjATUJ5YWl5bqT5Y2VDlJLRDIwMTUwMTA2MDAxCjIwMTUvMDEvMDYAHFRNQ0nlub/lt57pm7bku7bkvpvlupTkuK3lv4MHUzAwMzIzMwQyLjAwCDE5MzMuNjAwDOa3seS4mumbt+WFi2QCBg9kFgJmDxULJGVkZjE5NjlhLWQxZWMtNDU0NS05YmE1LWYyMjllZDllZGRjMwE2CeWFpeW6k+WNlQ5SS0QyMDE1MDEwNjAwMAoyMDE1LzAxLzA2ACHlub/lt57luILkv4rnrJnotLjmmJPmnInpmZDlhazlj7gGNDg3Nzg2BDUuMDAINTE0OC4wMDAM5rex5Lia6Zu35YWLZAIQDxYCHgdWaXNpYmxlaGRkGr2pc2L86yYieRMLo4J3WSdkc2o=" />
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
      <table border="0" style="width:960px;border-bottom:1px solid #b8b8b8;"">
        <tr><td class="titlebg"><span>配件报表</span>(采购入退库报表)
            </td>
            <td align="right">
            </td></tr>
      </table> 
       <!--查询条件 start-->
       <table border="0">
       <tr>
       <td>入库时间:</td><td><input name="txtRuKuDate1" type="text" value="2015-1-6" id="txtRuKuDate1" class="easyui-datebox" /></td><td><input name="txtRuKuDate2" type="text" value="2015-1-6" id="txtRuKuDate2" class="easyui-datebox" /></td>
       <td>业务单号:</td><td><input name="txtBusiBill" type="text" maxlength="20" id="txtBusiBill" /> </td>
       <td>供应商代码:</td><td><input name="txtSuppId" type="text" maxlength="20" id="txtSuppId" /> </td>
      </tr>
       <tr>
       <td>审核时间:</td><td><input name="txtExaDate1" type="text" id="txtExaDate1" class="easyui-datebox" /></td><td><input name="txtExaDate2" type="text" id="txtExaDate2" class="easyui-datebox" /></td>
       <td>商品编码:</td><td><input name="txtShopId" type="text" maxlength="60" id="txtShopId" /> </td>

       <td>供应商名称:</td><td><input name="txtSuppName" type="text" maxlength="60" id="txtSuppName" /> </td>
       
       
       </tr>
       <tr>
       <td>机构名称:</td>
       <td colspan="2" style="width:280px;">
       <input name="txtHidGroupId" type="text" value="6018" id="txtHidGroupId" style="display:none;" />
          <input name="txtGroupName" type="text" value="深业雷克" id="txtGroupName" onclick="groupselect();" style="width:100%;" />
       </td>
       <td><table id="radIoFlag" border="0">
	<tr>
		<td><input id="radIoFlag_0" type="radio" name="radIoFlag" value="" checked="checked" /><label for="radIoFlag_0">全部</label></td><td><input id="radIoFlag_1" type="radio" name="radIoFlag" value="入库单" /><label for="radIoFlag_1">入库</label></td><td><input id="radIoFlag_2" type="radio" name="radIoFlag" value="采购退库单" /><label for="radIoFlag_2">退库</label></td>
	</tr>
</table> 
       </td>
       <td><table id="radShowSort" border="0">
	<tr>
		<td><input id="radShowSort_0" type="radio" name="radShowSort" value="按单" checked="checked" /><label for="radShowSort_0">按单</label></td><td><input id="radShowSort_1" type="radio" name="radShowSort" value="按明细" /><label for="radShowSort_1">按明细</label></td>
	</tr>
</table> 
       </td>
       <td>
        <select name="ddlPageSize" id="ddlPageSize">
	<option value="30">30</option>
	<option value="50">50</option>
	<option selected="selected" value="100">100</option>
	<option value="300">300</option>
	<option value="500">500</option>
	<option value="50000">50000</option>

</select>
       </td>
       <td >
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
        <td>NO.</td><td>单据类型</td><td>业务单号</td>
        <td>入库日期</td><td>审核日期</td>
        <td>供应商</td><td>发票号码</td>
        <td>数量</td><td>é¢</td><td>æºæå</td>
        </tr>
        
        <tr ondblclick="ruKuBillShow('3e2a8219-f492-47fe-b24b-f20af5dd356e')">
        <td style="width:30px;text-align:center;">1</td><td>å¥åºå</td>
        <td>RKD20150106005</td>
        <td>2015/01/06</td><td></td>
        <td>TMCIå¹¿å·é¶ä»¶ä¾åºä¸­å¿</td><td>E005583</td>
        <td style="text-align:right;">3.00</td><td style="text-align:right;">4001.300</td><td>æ·±ä¸é·å</td>
        </tr>
        
        <tr ondblclick="ruKuBillShow('07173e0d-d8b5-4edd-8940-a01fc2f7abd9')">
        <td style="width:30px;text-align:center;">2</td><td>å¥åºå</td>
        <td>RKD20150106004</td>
        <td>2015/01/06</td><td></td>
        <td>TMCIå¹¿å·é¶ä»¶ä¾åºä¸­å¿</td><td>E005582</td>
        <td style="text-align:right;">6.00</td><td style="text-align:right;">13482.800</td><td>æ·±ä¸é·å</td>
        </tr>
        
        <tr ondblclick="ruKuBillShow('d85547be-4f95-45d5-97fd-f78673dd6c37')">
        <td style="width:30px;text-align:center;">3</td><td>å¥åºå</td>
        <td>RKD20150106003</td>
        <td>2015/01/06</td><td></td>
        <td>TMCIå¹¿å·é¶ä»¶ä¾åºä¸­å¿</td><td>S003234</td>
        <td style="text-align:right;">98.00</td><td style="text-align:right;">24038.800</td><td>æ·±ä¸é·å</td>
        </tr>
        
        <tr ondblclick="ruKuBillShow('0f591b67-6581-4b9a-bcc7-248e2bf2b4c6')">
        <td style="width:30px;text-align:center;">4</td><td>å¥åºå</td>
        <td>RKD20150106002</td>
        <td>2015/01/06</td><td></td>
        <td>å¹¿å·æµ·éè·æ±½è½¦éä»¶æéå¬å¸</td><td>807328</td>
        <td style="text-align:right;">4.00</td><td style="text-align:right;">2155.000</td><td>æ·±ä¸é·å</td>
        </tr>
        
        <tr ondblclick="ruKuBillShow('d52fe8a8-d5de-49a2-84ab-289dc465cf8c')">
        <td style="width:30px;text-align:center;">5</td><td>å¥åºå</td>
        <td>RKD20150106001</td>
        <td>2015/01/06</td><td></td>
        <td>TMCIå¹¿å·é¶ä»¶ä¾åºä¸­å¿</td><td>S003233</td>
        <td style="text-align:right;">2.00</td><td style="text-align:right;">1933.600</td><td>æ·±ä¸é·å</td>
        </tr>
        
        <tr ondblclick="ruKuBillShow('edf1969a-d1ec-4545-9ba5-f229ed9eddc3')">
        <td style="width:30px;text-align:center;">6</td><td>å¥åºå</td>
        <td>RKD20150106000</td>
        <td>2015/01/06</td><td></td>
        <td>å¹¿å·å¸ä¿ç¬è´¸ææéå¬å¸</td><td>487786</td>
        <td style="text-align:right;">5.00</td><td style="text-align:right;">5148.000</td><td>æ·±ä¸é·å</td>
        </tr>
        
         <tr>
        <td>åè®¡</td><td></td><td></td><td></td><td></td><td></td><td></td>
        <td style="text-align:right;">118.00</td><td style="text-align:right;">50759.50</td><td></td>
        </tr>
        
       <!--æåend-->

       <!--ææç»start-->
       
       <!--ææç»end-->

      </table>

       <!--æ°æ®æ¾ç¤º end-->        
    </div>

   <div>
    <!--åé¡µä»£ç start-->
    å±1é¡µ å½å1é¡µ è·³å°<input name="txtThisPage" type="text" value="1" id="txtThisPage" style="border:none;border-bottom:1px solid black;width:30px;" />
    <a onclick="return pageGo();" id="lnkPageGo" href="javascript:__doPostBack('lnkPageGo','')">è½¬å°</a>
    <!--åé¡µä»£ç end-->
    </div>

    
    <input name="txtMaxPage" type="text" value="1" id="txtMaxPage" style="display:none;" />
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="42BB18C0" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWHQKc8o7ADAL2v8epBgL2v4uYDALtrdXZBwKrw4zuAwKdnYTJCgK4hqLeBAKovNiBBAK1o/TEBQLOqIIaAsqJhmwCn5jq2goCo8jLqgoCis6HywoCn5jq2goCoJDazAgC9NyHsQsCh6GNtAcCkoOmtwwClIOmtwwCtsLB4AsCuMLB4AsCusLB4AsClP/kxQsCqYuJwQUCvO3p9gQC773OSgKFvcGXDALul770BDkipHV38ItjbHh09uIEQ+IJFoqE" />
</div></form>

    <script language="javascript" type="text/javascript" >
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

        //æå°åå±ç¤º
        function ruKuBillShow(thisBillGuid) {
            window.open("../../storeOtherManage/storeOtherInsertPrint.aspx?billGuid=" + thisBillGuid, "printInfo", "width:750px;height:450px;scroll:yes;resizable=yes"); 
        }


        function pageGo() {
            var t = document.getElementById("txtThisPage");
            var myReg = /^\d+$/;
            var pageN = t.value;
            if (!myReg.test(pageN)) {
                alert("è¾å¥æ°å­æ æ!è¯·éæ°è¾å¥!");
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