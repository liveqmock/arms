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
 <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=17a48e594e374bee9428a515058eb666" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=17a48e594e374bee9428a515058eb666" /><script src="../../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../JS/Frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../JS/Frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../JS/common.js?v=17a48e594e374bee9428a515058eb666" type="text/javascript"></script><link href="../../style/common.css?v=17a48e594e374bee9428a515058eb666" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="storeOtherInsertReport.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="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" />
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
       <td>入库时间:</td><td><input name="txtRuKuDate1" type="text" value="2015-1-5" id="txtRuKuDate1" class="easyui-datebox" /></td><td><input name="txtRuKuDate2" type="text" value="2015-1-5" id="txtRuKuDate2" class="easyui-datebox" /></td>
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
        <td>数量</td><td>金额</td><td>机构名</td>
        </tr>
        
        <tr ondblclick="ruKuBillShow('693befed-dffe-46a0-bdac-1315fe71292e')">
        <td style="width:30px;text-align:center;">1</td><td>入库单</td>
        <td>RKD20150105008</td>
        <td>2015/01/05</td><td>2015/01/05</td>
        <td>深业雷克萨斯精品部</td><td>900SM</td>
        <td style="text-align:right;">1.00</td><td style="text-align:right;">250.000</td><td>深业雷克</td>
        </tr>
        
        <tr ondblclick="ruKuBillShow('65acd198-dc53-4463-89cd-dd422a68def4')">
        <td style="width:30px;text-align:center;">2</td><td>入库单</td>
        <td>RKD20150105007</td>
        <td>2015/01/05</td><td>2015/01/05</td>
        <td>深业雷克萨斯精品部</td><td>150100921</td>
        <td style="text-align:right;">1.00</td><td style="text-align:right;">430.000</td><td>深业雷克</td>
        </tr>
        
        <tr ondblclick="ruKuBillShow('e4894fe3-6916-48b7-a55e-afa2decac525')">
        <td style="width:30px;text-align:center;">3</td><td>入库单</td>
        <td>RKD20150105006</td>
        <td>2015/01/05</td><td>2015/01/05</td>
        <td>深业雷克萨斯精品部</td><td>6N2U1</td>
        <td style="text-align:right;">1.00</td><td style="text-align:right;">250.000</td><td>深业雷克</td>
        </tr>
        
        <tr ondblclick="ruKuBillShow('5b937206-a90f-4af6-a11a-d37a536a05e1')">
        <td style="width:30px;text-align:center;">4</td><td>入库单</td>
        <td>RKD20150105005</td>
        <td>2015/01/05</td><td>2015/01/05</td>
        <td>深圳市深港兴实业有限公司</td><td>00427032</td>
        <td style="text-align:right;">1.00</td><td style="text-align:right;">1230.000</td><td>深业雷克</td>
        </tr>
        
        <tr ondblclick="ruKuBillShow('40ec2c10-7093-4dbe-bfb4-273b7feda3a2')">
        <td style="width:30px;text-align:center;">5</td><td>入库单</td>
        <td>RKD20150105004</td>
        <td>2015/01/05</td><td>2015/01/05</td>
        <td>深业雷克萨斯精品部</td><td>S8M42</td>
        <td style="text-align:right;">1.00</td><td style="text-align:right;">250.000</td><td>深业雷克</td>
        </tr>
        
        <tr ondblclick="ruKuBillShow('9ca59da8-fbba-4d41-95e2-13ee1eec546f')">
        <td style="width:30px;text-align:center;">6</td><td>入库单</td>
        <td>RKD20150105003</td>
        <td>2015/01/05</td><td>2015/01/05</td>
        <td>TMCI广州零件供应中心</td><td>S003188</td>
        <td style="text-align:right;">91.00</td><td style="text-align:right;">10434.600</td><td>深业雷克</td>
        </tr>
        
        <tr ondblclick="ruKuBillShow('d58ab4c8-1993-412a-8655-bbd58ef3d5c7')">
        <td style="width:30px;text-align:center;">7</td><td>入库单</td>
        <td>RKD20150105002</td>
        <td>2015/01/05</td><td>2015/01/05</td>
        <td>TMCI广州零件供应中心</td><td>E005519</td>
        <td style="text-align:right;">17.00</td><td style="text-align:right;">4504.500</td><td>深业雷克</td>
        </tr>
        
        <tr ondblclick="ruKuBillShow('87910fff-0aa9-4090-be2d-821a0c009b85')">
        <td style="width:30px;text-align:center;">8</td><td>入库单</td>
        <td>RKD20150105001</td>
        <td>2015/01/05</td><td>2015/01/05</td>
        <td>TMCI广州零件供应中心</td><td>E005520</td>
        <td style="text-align:right;">10.00</td><td style="text-align:right;">1320.200</td><td>深业雷克</td>
        </tr>
        
        <tr ondblclick="ruKuBillShow('106c321f-df8e-416a-8187-c36d68431dc3')">
        <td style="width:30px;text-align:center;">9</td><td>入库单</td>
        <td>RKD20150105000</td>
        <td>2015/01/05</td><td>2015/01/05</td>
        <td>广州市俊笙贸易有限公司</td><td>37859</td>
        <td style="text-align:right;">1.00</td><td style="text-align:right;">1230.000</td><td>深业雷克</td>
        </tr>
        
         <tr>
        <td>合计</td><td></td><td></td><td></td><td></td><td></td><td></td>
        <td style="text-align:right;">124.00</td><td style="text-align:right;">19899.30</td><td></td>
        </tr>
        
       <!--按单end-->

       <!--按明细start-->
       
       <!--按明细end-->

      </table>

       <!--数据显示 end-->        
    </div>

   <div>
    <!--分页代码start-->
    共1页 当前1页 跳到<input name="txtThisPage" type="text" value="1" id="txtThisPage" style="border:none;border-bottom:1px solid black;width:30px;" />
    <a onclick="return pageGo();" id="lnkPageGo" href="javascript:__doPostBack('lnkPageGo','')">转到</a>
    <!--分页代码end-->
    </div>

    
    <input name="txtMaxPage" type="text" value="1" id="txtMaxPage" style="display:none;" />
    
<div>

  <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="42BB18C0" />
  <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWHQL+t5zLAQL2v8epBgL2v4uYDALtrdXZBwKrw4zuAwKdnYTJCgK4hqLeBAKovNiBBAK1o/TEBQLOqIIaAsqJhmwCn5jq2goCo8jLqgoCis6HywoCn5jq2goCoJDazAgC9NyHsQsCh6GNtAcCkoOmtwwClIOmtwwCtsLB4AsCuMLB4AsCusLB4AsClP/kxQsCqYuJwQUCvO3p9gQC773OSgKFvcGXDALul770BA7RHbrGGM5/uvgNMrOiZ3zzioX6" />
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

        //打印单展示
        function ruKuBillShow(thisBillGuid) {
            window.open("../../storeOtherManage/storeOtherInsertPrint.aspx?billGuid=" + thisBillGuid, "printInfo", "width:750px;height:450px;scroll:yes;resizable=yes"); 
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

            return true;

        }


    </script>

</body>
</html>