

<html>
<head><title>
	维修出库退库报表
</title>
      <style type="text/css">
       td
       {
       	white-space:nowrap;
       	}
    </style>
 <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../JS/Frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../JS/Frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../JS/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="storeOtherWeiXiuOut.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTI5Mjc3NzQxMg9kFgICAw9kFgICBQ8QDxYGHg1EYXRhVGV4dEZpZWxkBQh1c2VyTmFtZR4ORGF0YVZhbHVlRmllbGQFCHVzZXJOYW1lHgtfIURhdGFCb3VuZGdkEBUWBuWUkOmbtwnliJjmnbDnlJ8J57qq5Lyf5piOCeW6hOeni+mcnhXpm7flhYvokKjmlq/nrqHnkIblkZgJ5L2V54SV6ZSLCeaut+acqOaguQbkvZnkuZAJ56ug5qWa546yDOeOi+mHkeahguWtkAnlvKDlhYjotZ4J5r2Y5pmv6ZSLCeS4peWGsOWGsAnlkLTlsI/nh5UJ6ZmI56eL5rOiCeeOi+engOWonwbmnY7lqLQJ5p6X5rO96bmPCemZiOiNo+WNjgnlvKDnkZ7mnbAJ6ZmI5pet5LyfBuWFqOmDqBUWBuWUkOmbtwnliJjmnbDnlJ8J57qq5Lyf5piOCeW6hOeni+mcnhXpm7flhYvokKjmlq/nrqHnkIblkZgJ5L2V54SV6ZSLCeaut+acqOaguQbkvZnkuZAJ56ug5qWa546yDOeOi+mHkeahguWtkAnlvKDlhYjotZ4J5r2Y5pmv6ZSLCeS4peWGsOWGsAnlkLTlsI/nh5UJ6ZmI56eL5rOiCeeOi+engOWonwbmnY7lqLQJ5p6X5rO96bmPCemZiOiNo+WNjgnlvKDnkZ7mnbAJ6ZmI5pet5LyfABQrAxZnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZGRk5GJNURfs5flOI7QsZDpJAHx01r4=" />
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
        <tr><td class="titlebg"><span>配件报表</span>(维修出退库报表)
            </td>
            <td align="right">
            </td></tr>
      </table> 
       <!--查询条件 start-->
       <table border="0">
       <tr>
       <td>出库时间:</td><td><input name="txtChuKuDate1" type="text" value="2015-1-6" id="txtChuKuDate1" class="easyui-datebox" /></td>
       <td><input name="txtChuKuDate2" type="text" value="2015-1-6" id="txtChuKuDate2" class="easyui-datebox" /></td>
       <td>维修单号:</td><td><input name="txtBusiBillNo" type="text" maxlength="20" id="txtBusiBillNo" /> </td>
       <td>出库单号:</td><td><input name="txtChuKuBillNo" type="text" maxlength="20" id="txtChuKuBillNo" /> </td>
       <td>车牌号码:</td><td><input name="txtChePaiHaoMa" type="text" maxlength="60" id="txtChePaiHaoMa" /></td>
       <td>服务顾问:</td><td><select name="ddlFuWuGuWen" id="ddlFuWuGuWen">
	<option value="唐雷">唐雷</option>
	<option value="刘杰生">刘杰生</option>
	<option value="纪伟明">纪伟明</option>
	<option value="庄秋霞">庄秋霞</option>
	<option value="雷克萨斯管理员">雷克萨斯管理员</option>
	<option value="何焕锋">何焕锋</option>
	<option value="殷木根">殷木根</option>
	<option value="余乐">余乐</option>
	<option value="章楚玲">章楚玲</option>
	<option value="王金桂子">王金桂子</option>
	<option value="张先赞">张先赞</option>
	<option value="潘景锋">潘景锋</option>
	<option value="严冰冰">严冰冰</option>
	<option value="吴小燕">吴小燕</option>
	<option value="陈秋波">陈秋波</option>
	<option value="王秀娟">王秀娟</option>
	<option value="李娴">李娴</option>
	<option value="林泽鹏">林泽鹏</option>
	<option value="陈荣华">陈荣华</option>
	<option value="张瑞杰">张瑞杰</option>
	<option value="陈旭伟">陈旭伟</option>
	<option selected="selected" value="">全部</option>

</select> </td>
       </tr>
       <tr>
       <td>出厂时间:</td><td><input name="txtWeiXiuOutDate1" type="text" id="txtWeiXiuOutDate1" class="easyui-datebox" /></td>
       <td><input name="txtWeiXiuOutDate2" type="text" id="txtWeiXiuOutDate2" class="easyui-datebox" /></td>
       <td>商品编码:</td><td><input name="txtShopId" type="text" maxlength="60" id="txtShopId" /> </td>

       <td>商品名称:</td><td><input name="txtShopName" type="text" maxlength="60" id="txtShopName" /> </td>      
       <td>车主名称:</td><td><input name="txtCheZhuName" type="text" maxlength="60" id="txtCheZhuName" /></td>
        </tr>
       <tr>
       <td>机构名称:</td>
       <td colspan="2" style="width:280px;">
          <input name="txtHidGroupId" type="text" value="6018" id="txtHidGroupId" style="display:none;" />
          <input name="txtGroupName" type="text" value="深业雷克" id="txtGroupName" onclick="groupselect();" style="width:100%;" />
       </td>
       <td colspan="2" >
       <table id="radIoFlag" border="0">
	<tr>
		<td><input id="radIoFlag_0" type="radio" name="radIoFlag" value="" checked="checked" /><label for="radIoFlag_0">全部</label></td><td><input id="radIoFlag_1" type="radio" name="radIoFlag" value="1" /><label for="radIoFlag_1">出库</label></td><td><input id="radIoFlag_2" type="radio" name="radIoFlag" value="-1" /><label for="radIoFlag_2">退库</label></td>
	</tr>
</table> 
       </td>
       <td>
       <table id="radShowSort" border="0">
	<tr>
		<td><input id="radShowSort_0" type="radio" name="radShowSort" value="按单" checked="checked" /><label for="radShowSort_0">按单</label></td><td><input id="radShowSort_1" type="radio" name="radShowSort" value="按明细" /><label for="radShowSort_1">按明细</label></td>
	</tr>
</table> 
       </td>
        <td>
         <select name="ddlWeiXiuStatus" id="ddlWeiXiuStatus" style="width:70px;">
	<option selected="selected" value="">全部</option>
	<option value="1">已出库</option>
	<option value="0">未出库</option>

</select>
       </td>
        <td>
        <select name="ddlPageSize" id="ddlPageSize">
	<option value="30">30</option>
	<option value="50">50</option>
	<option selected="selected" value="100">100</option>
	<option value="300">300</option>
	<option value="500">500</option>
	<option value="50000">50000</option>
	<option value="500000">500000</option>

</select>
       </td>
       <td>
       <a onclick="return searchCheck();" id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
       
       <a onclick="return searchCheck();" id="lnkExcel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkExcel','')">Excel</a>
       <a onclick="return lnkChange();" id="lnkZhuanXiang" class="easyui-linkbutton" href="javascript:__doPostBack('lnkZhuanXiang','')">汇总查询</a> 
       </td>

       </tr>

       </table>
       <!--查询条件 end-->



     <!--数据列表start-->
       <table id="tb" border="1" style="border:1px solid gray;border-collapse:collapse;width:960px;"  >
       <!--按单start-->
        
         <tr>
         <td>NO.</td>
         <td>出库单号</td>
         <td>维修单号</td>
         <td>维修类型</td>
         <td>单据状态</td>
         <td>服务顾问</td>
         <td>车牌号码</td>
         <td>车主名称</td>
         <td>车架号码</td>
         <td>出库时间</td>
         <td>出厂时间</td>
         <td>单据类型</td>
         <td>经手人</td>
         <td>数量</td>
         <td>金额</td>
         <td>成本</td>
         <td>机构简称</td>
         <td>车系</td>
         </tr>
         
          <tr  ondblclick="BillShow('39f2ae92-626d-465f-90e9-068b64fabd63')">
         <td>1</td>
         <td>WCKD1501060007</td>
         <td>JDD20150106003</td>
         <td>一般维修</td>
         <td>等待派工</td>
         <td>张先赞</td>
         <td>粤B6U996</td>
         <td>陈思邦</td>
         <td>JTHBW1GG5E2055389</td>
         <td>2015/01/06</td>
         <td></td>
         <td>出库</td>
         <td>黄荣</td>
         <td>16.00</td>
         <td>5664.00</td>
         <td>4248.000</td>
         <td>深业雷克</td>
         <td>ES300h</td>
         </tr>
         
          <tr  ondblclick="BillShow('33967fe4-c73a-4926-ab50-dd32a5dd4995')">
         <td>2</td>
         <td>WCKD1501060006</td>
         <td>JDD20150105025</td>
         <td>定保</td>
         <td>接待中</td>
         <td>陈秋波</td>
         <td>粤B800JN</td>
         <td>林勇武</td>
         <td>JTHBJ46G672195116</td>
         <td>2015/01/06</td>
         <td></td>
         <td>出库</td>
         <td>陈海峰</td>
         <td>1.00</td>
         <td>152.00</td>
         <td>113.510</td>
         <td>深业雷克</td>
         <td>ES350</td>
         </tr>
         
          <tr  ondblclick="BillShow('18738c1f-813d-4c08-9ad3-8ee075b22284')">
         <td>3</td>
         <td>WCKD1501060005</td>
         <td>JDD20150105025</td>
         <td>定保</td>
         <td>接待中</td>
         <td>陈秋波</td>
         <td>粤B800JN</td>
         <td>林勇武</td>
         <td>JTHBJ46G672195116</td>
         <td>2015/01/06</td>
         <td></td>
         <td>出库</td>
         <td>陈海峰</td>
         <td>1.00</td>
         <td>1288.00</td>
         <td>724.500</td>
         <td>深业雷克</td>
         <td>ES350</td>
         </tr>
         
          <tr  ondblclick="BillShow('69b810b2-5387-49db-a60b-8ca44c2f6759')">
         <td>4</td>
         <td>WCKD1501060004</td>
         <td>JDD20150106005</td>
         <td>定保</td>
         <td>接待中</td>
         <td>刘杰生</td>
         <td>粤BCK483</td>
         <td>骆石平</td>
         <td>JTHBJ1GG3E2047242</td>
         <td>2015/01/06</td>
         <td></td>
         <td>出库</td>
         <td>陈海峰</td>
         <td>53.00</td>
         <td>1552.20</td>
         <td>904.005</td>
         <td>深业雷克</td>
         <td>ES250</td>
         </tr>
         
          <tr  ondblclick="BillShow('d3cb22b3-4642-4964-a5eb-2d72ac2c1839')">
         <td>5</td>
         <td>WCKD1501060003</td>
         <td>JDD20150105035</td>
         <td>保险</td>
         <td>接待中</td>
         <td>林泽鹏</td>
         <td>粤BE52R3</td>
         <td>陈丽鸣</td>
         <td>JTHBJ1GGXE2059744</td>
         <td>2015/01/06</td>
         <td></td>
         <td>出库</td>
         <td>黄荣</td>
         <td>5.00</td>
         <td>3679.00</td>
         <td>2742.164</td>
         <td>深业雷克</td>
         <td>ES250</td>
         </tr>
         
          <tr  ondblclick="BillShow('e273f7b9-c653-4ed4-b45c-358ed447f29f')">
         <td>6</td>
         <td>WCKD1501060002</td>
         <td>JDD20150106004</td>
         <td>保险</td>
         <td>接待中</td>
         <td>林泽鹏</td>
         <td>粤BE03M5</td>
         <td>魏锡裕</td>
         <td>JTHBJ1GG8E2048077</td>
         <td>2015/01/06</td>
         <td></td>
         <td>出库</td>
         <td>黄荣</td>
         <td>12.00</td>
         <td>19898.00</td>
         <td>10779.656</td>
         <td>深业雷克</td>
         <td>ES250</td>
         </tr>
         
          <tr  ondblclick="BillShow('cd6a900a-3c19-4538-bf62-83abb0de3ed7')">
         <td>7</td>
         <td>WCKD1501060001</td>
         <td>JDD20150106001</td>
         <td>厂家保修</td>
         <td>等待派工</td>
         <td>张先赞</td>
         <td>粤BX2Q23</td>
         <td>梁亚嵩</td>
         <td>JTHBK1GG8C2003568</td>
         <td>2015/01/06</td>
         <td></td>
         <td>出库</td>
         <td>黄荣</td>
         <td>1.00</td>
         <td>4899.00</td>
         <td>3674.300</td>
         <td>深业雷克</td>
         <td>ES350</td>
         </tr>
         
           <tr>
         <td>合计</td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td>89.00</td>
         <td>37132.20</td>
         <td>23186.135</td>
         <td></td>
         <td></td>
         </tr>
         
       <!--按单end-->

       <!--按明细 satrt-->
        
       <!--按明细 end-->

       </table>

     <!--数据列表end-->
    </div>

    <div>
    <!--分页代码start-->
    共1页 当前1页 跳到<input name="txtThisPage" type="text" value="1" id="txtThisPage" style="border:none;border-bottom:1px solid black;width:30px;" />
    <a onclick="return pageGo();" id="lnkPageGo" href="javascript:__doPostBack('lnkPageGo','')">转到</a>
    <!--分页代码end-->
    </div>

    
    <input name="txtMaxPage" type="text" value="1" id="txtMaxPage" style="display:none;" />


    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="759DC7F7" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWOgL5pd+bBQKixbDWAgKhxbDWAgKijsvTCgLb6NQvApTI/XIC//DEwQcCmIWgzQ4C9arb/QoC75fLxAECjYWC7QoCgbCKtgoCqZu3oQcCuMzgugUC34za3QECyuTZ0QMCi5rJqQIClPDTvgsC2t7ewgMCwqTG9w0C55PewAECi7bCqgoCrZzQpwQC94yT3Q4Ck7TgkQUClZnAlgYCyNjMpQ8Cz7WLmgQCo8XMuAkCpMXMuAkCqLzYgQQCuJy42AUCqsfv4gcCzqiCGgLKiYZsAp+Y6toKApD3wLQGApz3jLcGAp+Y6toKAqCQ2swIAvTch7ELAoehjbQHArfJoSMCuKaLzQwCp6aLzQwCkoOmtwwClIOmtwwCtsLB4AsCuMLB4AsCusLB4AsClP/kxQsClP+k+gsCqYuJwQUCvO3p9gQCzpafkw0C773OSgKFvcGXDALul770BLGpsAvoELt2Spi4havbRZhjbcGu" />
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
        function BillShow(thisBillGuid) {
            window.open("../../storeOtherManage/storeOtherWeiXiuPrint.aspx?sourceId=1&thisGuid=" + thisBillGuid, "printInfo", "width:750px;height:450px;scroll:yes;resizable=yes");
        }


        function lnkChange() {
            location.href = "storeOtherWeiXiuOutGroupByShopId.aspx?d="+new Date();
            return false;
        }


        var btnFlag = "0";
        function searchCheck() {
            if (btnFlag == "0") { btnFlag = "1"; return true; } else { alert('禁止多次进行提交操作!'); }
            return false;
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