 
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><title>
  维修工单列表查询
</title>

    <style type="text/css">
     
     td
     {
      white-space:nowrap;
      font-size:12px;
      padding-left:3px;
      }
     
    </style>

 <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../js/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>

<script language="javascript" type="text/javascript" >

    function gongDanInfoGet(id) {
        var v = $("#" + id + "V").val();
        if (v == "") {
            alert("无符合条件的数据！");
        }
        else {
            return v;
        }        
    }
</script>

<body>
    <form name="form1" method="post" action="saleAfterWeiXiuGongDanListShow.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTE0Nzc1MDc0OGQYAQUeX19Db250cm9sc1JlcXVpcmVQb3N0QmFja0tleV9fFhQFEGNoa1dlaVhpdVNvcnRBbGwFEWNoa0JpbGxTb3J0TGlzdCQwBRFjaGtCaWxsU29ydExpc3QkMQURY2hrQmlsbFNvcnRMaXN0JDIFEWNoa0JpbGxTb3J0TGlzdCQzBRFjaGtCaWxsU29ydExpc3QkNAURY2hrQmlsbFNvcnRMaXN0JDUFEWNoa0JpbGxTb3J0TGlzdCQ2BRFjaGtCaWxsU29ydExpc3QkNwURY2hrQmlsbFNvcnRMaXN0JDgFEWNoa0JpbGxTb3J0TGlzdCQ4BRJjaGtXZWlYaXVTdGF0dXNBbGwFEWNoa1dlaVhpdVN0YXR1cyQwBRFjaGtXZWlYaXVTdGF0dXMkMQURY2hrV2VpWGl1U3RhdHVzJDIFEWNoa1dlaVhpdVN0YXR1cyQzBRFjaGtXZWlYaXVTdGF0dXMkNAURY2hrV2VpWGl1U3RhdHVzJDUFEWNoa1dlaVhpdVN0YXR1cyQ2BRFjaGtXZWlYaXVTdGF0dXMkNgo86XocqoXkfGCrMqylaAZnDiaI" />
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
    <div>
     <table border="0" style="width:98%;border-bottom:1px solid #b8b8b8;">
        <tr><td class="titlebg"><span>售后</span>(维修工单列表查询)
         </td><td align="right">
           </td></tr>
         </table> 
    </div> 

    <div>
    <!--查询按钮 start-->
      <table border="0" cellpadding="0" cellspacing="0" style="margin-top:3px;" >
       <tr>
       <td>入厂日期:</td><td><input name="txtRuChangDate1" type="text" maxlength="10" id="txtRuChangDate1" class="easyui-datebox" /> </td>
       <td><input name="txtRuChangDate2" type="text" maxlength="10" id="txtRuChangDate2" class="easyui-datebox" /> </td>
       <td>车牌号码:</td><td><input name="txtChePaiHaoMa" type="text" maxlength="10" id="txtChePaiHaoMa" /> </td>
       <td>车主姓名:</td><td><input name="txtCheZhuName" type="text" maxlength="10" id="txtCheZhuName" /> </td>
       <td>服务顾问:</td><td><select name="ddlFuWuGuWen" id="ddlFuWuGuWen" style="width:100px;">
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
       <td>工单号码:</td><td><input name="txtBillNo" type="text" maxlength="30" id="txtBillNo" /> </td>

       </tr>
       
       <tr>
       <td>出厂日期:</td><td><input name="txtChuChangDate1" type="text" value="2015-1-6" maxlength="10" id="txtChuChangDate1" class="easyui-datebox" /> </td>
       <td><input name="txtChuChangDate2" type="text" value="2015-1-6" maxlength="10" id="txtChuChangDate2" class="easyui-datebox" /> </td>
       <td>车系:</td><td><input name="txtCheXi" type="text" maxlength="10" id="txtCheXi" /> </td>
       <td>车型:</td><td><input name="txtCheXing" type="text" maxlength="10" id="txtCheXing" /> </td>

       <td>排序:</td>
       <td><select name="ddlPaiLie" id="ddlPaiLie" style="width:100px;">
  <option selected="selected" value="入厂时间">入厂时间</option>
  <option value="出厂时间">出厂时间</option>
  <option value="工单号">工单号</option>
  <option value="服务顾问">服务顾问</option>

</select> </td>
       <td></td>
       <td></td>

       </tr>

       <tr>
       <td>工单类型:</td>
       <td colspan="6">
         <input id="chkWeiXiuSortAll" type="checkbox" name="chkWeiXiuSortAll" checked="checked" />全部
         <table id="chkBillSortList" border="0">
  <tr>
    <td><input id="chkBillSortList_0" type="checkbox" name="chkBillSortList$0" checked="checked" /><label for="chkBillSortList_0">一般维修</label></td><td><input id="chkBillSortList_1" type="checkbox" name="chkBillSortList$1" checked="checked" /><label for="chkBillSortList_1">首保</label></td><td><input id="chkBillSortList_2" type="checkbox" name="chkBillSortList$2" checked="checked" /><label for="chkBillSortList_2">定保</label></td><td><input id="chkBillSortList_3" type="checkbox" name="chkBillSortList$3" checked="checked" /><label for="chkBillSortList_3">大客户</label></td><td><input id="chkBillSortList_4" type="checkbox" name="chkBillSortList$4" checked="checked" /><label for="chkBillSortList_4">厂家保修</label></td><td><input id="chkBillSortList_5" type="checkbox" name="chkBillSortList$5" checked="checked" /><label for="chkBillSortList_5">保险</label></td><td><input id="chkBillSortList_6" type="checkbox" name="chkBillSortList$6" checked="checked" /><label for="chkBillSortList_6">免检</label></td><td><input id="chkBillSortList_7" type="checkbox" name="chkBillSortList$7" checked="checked" /><label for="chkBillSortList_7">返修</label></td><td><input id="chkBillSortList_8" type="checkbox" name="chkBillSortList$8" checked="checked" /><label for="chkBillSortList_8">新车检查</label></td>
  </tr>
</table>
       </td>
       </tr>

       <tr>
       <td>维修状态:</td>
       <td colspan="6">
        <input id="chkWeiXiuStatusAll" type="checkbox" name="chkWeiXiuStatusAll" checked="checked" />全部
        <table id="chkWeiXiuStatus" border="0">
  <tr>
    <td><input id="chkWeiXiuStatus_0" type="checkbox" name="chkWeiXiuStatus$0" checked="checked" /><label for="chkWeiXiuStatus_0">接待中</label></td><td><input id="chkWeiXiuStatus_1" type="checkbox" name="chkWeiXiuStatus$1" checked="checked" /><label for="chkWeiXiuStatus_1">等待派工</label></td><td><input id="chkWeiXiuStatus_2" type="checkbox" name="chkWeiXiuStatus$2" checked="checked" /><label for="chkWeiXiuStatus_2">维修中</label></td><td><input id="chkWeiXiuStatus_3" type="checkbox" name="chkWeiXiuStatus$3" checked="checked" /><label for="chkWeiXiuStatus_3">已竣工</label></td><td><input id="chkWeiXiuStatus_4" type="checkbox" name="chkWeiXiuStatus$4" checked="checked" /><label for="chkWeiXiuStatus_4">财务收款中</label></td><td><input id="chkWeiXiuStatus_5" type="checkbox" name="chkWeiXiuStatus$5" checked="checked" /><label for="chkWeiXiuStatus_5">已出库</label></td><td><input id="chkWeiXiuStatus_6" type="checkbox" name="chkWeiXiuStatus$6" /><label for="chkWeiXiuStatus_6">单据撤销</label></td>
  </tr>
</table>
       </td>
       <td>
        <a onclick="return searchCheck();" id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
         
        <a onclick="return searchCheck();" id="lnkExcel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkExcel','')">Excel</a>
       </td>
       </tr>
        

      </table>

    <!--查询按钮 end-->
    </div>


    <div>
     <!--数据列表(可分页) start-->
         <table id="tb" border="1" style="border:1px solid gray;border-collapse:collapse;width:960px;font-size:9px;"  >
            
         </table>
     <!--数据列表 end-->
    </div>
      <div>
    <!--分页代码start-->
    共0页 当前1页 跳到<input name="txtThisPage" type="text" value="1" id="txtThisPage" style="border:none;border-bottom:1px solid black;width:30px;" />
    <a onclick="return pageGo();" id="lnkPageGo" href="javascript:__doPostBack('lnkPageGo','')">转到</a>
    <!--分页代码end-->
    </div>

    
    <input name="txtMaxPage" type="text" id="txtMaxPage" style="display:none;" />



     
    </div>
    
<div>

  <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="AEC5E768" />
  <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWOwKV2bvhDgKdzMyFDwKC467wBAKUyP1yAqrH7+IHAv/wxMEHApiFoM0OAvWq2/0KAu+Xy8QBAo2Fgu0KAoGwirYKAqmbt6EHArjM4LoFAt+M2t0BAsrk2dEDAouayakCApTw074LAtre3sIDAsKkxvcNAueT3sABAou2wqoKAq2c0KcEAveMk90OApO04JEFApWZwJYGAsjYzKUPAs+1i5oEAtr08I0OArPxpOcGArPx4HgC1s/8zgIClt/IgwYC1tqNgAkCs9uNgAkCs67ZrAUCpr2rqgUC6JWvoQcCqdvXyQsCqtvXyQsCq9vXyQsCrNvXyQsCrdvXyQsCrtvXyQsCr9vXyQsCsNvXyQsCsdvXyQsCo5+a8AoCz56u/AkC0J6u/AkC0Z6u/AkC0p6u/AkCy56u/AkCzJ6u/AkCzZ6u/AkCqYuJwQUCvO3p9gQC773OSgKFvcGXDALul770BDO/aBCRbzG+JRvdNilOXedK/xzP" />
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

            __doPostBack('lnkSearch','');
            return false;

        }


        function showDetail(saleAfterGuid, i) {
            var href = "../../saleAfterManage/saleAfterWeiXiuLiShiDetailShowFrame.aspx?saleAfterGuid=" + saleAfterGuid + "&type=维修历史&thisLoc=" + i + "&d=" + new Date();
            var SizeZ = 'height=580,width=940,toolbar=no,resizable=yes,status=no,menubar=no,scrollbars=yes';
            try {
                if (!openStatus2.closed) {
                    alert("工单历史窗口已在外部打开");
                    openStatus2.focus();
                    return false;
                }
                else {
                    openStatus2 = window.open(href, "工单历史", SizeZ);
                }
            }
            catch (Error) {
                openStatus2 = window.open(href, "工单历史", SizeZ);
            }


        }


        function showPrintPeiJianDetail(saleAfterGuid) {
            var href = "../../saleAfterManage/LingJianShiYongDan.aspx?saleAfterGuid=" + saleAfterGuid + "&type=零件使用&d=" + new Date();
            var SizeZ = 'height=580,width=700,toolbar=no,resizable=yes,status=no,menubar=no,scrollbars=yes';
            try {
                if (!openStatus2.closed) {
                    alert("零件使用窗口已在外部打开");
                    openStatus2.focus();
                    return false;
                }
                else {
                    openStatus2 = window.open(href, "零件使用", SizeZ);
                }
            }
            catch (Error) {
                openStatus2 = window.open(href, "零件使用", SizeZ);
            }
        }


        var btnFlag = "0";
        function searchCheck() {
            if (btnFlag == "0") { btnFlag = "1"; return true; } else { alert('禁止多次进行提交操作!'); }
            return false;
        }

    </script>

</body>
</html>