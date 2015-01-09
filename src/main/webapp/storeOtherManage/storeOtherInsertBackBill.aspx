
<html >
<head><title>
	入库退货模块
</title>
    <style type="text/css">
     td
     {
         white-space:nowrap;
         }
    </style>
 <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="storeOtherInsertBackBill.aspx?operSort=mdf&amp;billGuid=6b4abc45-94df-4e62-b82b-93c8f3ebcc09&amp;d=Thu+Jan+08+2015+11%3a45%3a11+GMT+0800" id="form1">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTI3NTY4MDUzMw9kFgICAQ9kFhACAw8PFgIeBFRleHQFD0NHVEgyMDE1MDEwODAwMWRkAgUPDxYCHwAFEDIwMTUtMS04IDA6MDA6MDBkZAINDxAPFgYeDkRhdGFWYWx1ZUZpZWxkBQF2Hg1EYXRhVGV4dEZpZWxkBQF2HgtfIURhdGFCb3VuZGdkEBUDDOi0qOmHj+mXrumimAzmu57plIDlupPlrZgAFQMM6LSo6YeP6Zeu6aKYDOa7numUgOW6k+WtmAAUKwMDZ2dnZGQCDw8QDxYGHwIFAWIfAQUBYR8DZ2QQFQEV5Lmd5rGf5Liw55Sw6YWN5Lu25LuTFQEFNjAxMkEUKwMBZ2RkAhEPEA8WBh8BBQF2HwIFAXYfA2dkEBUDBuaUtuaNrg/lop7lgLznqI7lj5HnpagAFQMG5pS25o2uD+WinuWAvOeojuWPkeelqAAUKwMDZ2dnZGQCFw8QZGQWAQICZAIZD2QWAgICDw8WAh4HVmlzaWJsZWhkZAIbDxYCHgtfIUl0ZW1Db3VudAIBFgICAQ9kFgJmDxUKATEkZTM0N2U4Y2MtNzJjMS00ODVkLWFkNDUtOTBmZWI5MGE4NjJkCjA0NDY1MzYwMjAV5Yi25Yqo5pGp5pOm54mHPTM3MDMwAAAEMS4wMAYzMTUuODEGMzE1LjgxAGRkZl8TfnbBZiT60mySWzKjCsQrn1I=" />
</div>

  <div style="margin-left:5px;margin-top:2px;" >
    <div>
    <table border="0" style="width:960px;border-bottom:1px solid #b8b8b8;"">
        <tr><td class="titlebg"><span>配件管理</span>(入库退库单)
         </td><td align="right">
           </td></tr>
         </table> 
    </div> 
    <div id="divMain">
         <table border="0" width="800px" >
         <tr>
         <td style="text-align:right;">退库单号:</td>
         <td>
         <input name="txtGuid" type="hidden" id="txtGuid" value="6b4abc45-94df-4e62-b82b-93c8f3ebcc09" />
         <input name="txtBillNo" type="text" value="CGTH20150108001" maxlength="30" readonly="readonly" id="txtBillNo" style="width:125px;" /> </td>
         <td>退库日期:</td>
         <td><input name="txtTuiKuDate" type="text" value="2015-1-8 0:00:00" readonly="readonly" id="txtTuiKuDate" style="width:125px;" /> </td>
         <td><span class="requireSpan">*&nbsp;</span>供应商:</td>
         <td>
          <input name="txtSuppId" type="hidden" id="txtSuppId" value="APC16" />
          <input name="txtSuppName" type="text" value="一汽丰田" maxlength="30" id="txtSuppName" style="width:100%;" />
          </td>
          <td>
          <input type="button" value="C" style="height:25px;width:25px;" onClick="suppChoice()" />
          </td>
         <td><span class="requireSpan">*&nbsp;</span>经手人:</td>
         <td><input name="txtJingShouRen" type="text" value="吴可" maxlength="10" id="txtJingShouRen" /> </td>
         </tr>
         <tr>
         <td  style="text-align:right;"><span class="requireSpan">*&nbsp;</span>退库类型:</td>
         <td>
         <select name="ddlTuiKuSort" id="ddlTuiKuSort" style="width:125px;">
	<option selected="selected" value="质量问题">质量问题</option>
	<option value="滞销库存">滞销库存</option>
	<option value=""></option>

</select>
         </td>
        <td><span class="requireSpan">*&nbsp;</span>所属仓库:</td>
         <td>
         <select name="ddlCangKu" id="ddlCangKu" style="width:125px;">
	<option selected="selected" value="6012A">九江丰田配件仓</option>

</select>
         </td>
         <td>发票类型:</td>
         <td>
         <select name="ddlFaPiaoType" id="ddlFaPiaoType" style="width:240px;">
	<option value="收据">收据</option>
	<option selected="selected" value="增值税发票">增值税发票</option>
	<option value=""></option>

</select>
          </td>   
          <td></td>             
         <td>发票号:</td>
         <td>
          <input name="txtFaPiaoHao" type="text" maxlength="15" id="txtFaPiaoHao" />
         </td>
         </tr>
         <tr>
         <td  style="text-align:right;">单据备注:</td>
         <td colspan="5">
         <input name="txtRemarks" type="text" maxlength="100" id="txtRemarks" style="width:100%;" />
         </td>
         <td></td>
         <td></td>
         <td>
         <select name="ddlStatus" id="ddlStatus" style="width:138px;">
	<option selected="selected" value="0">待提交审核</option>
	<option value="1">审核中</option>
	<option value="2">审核完毕</option>
	<option value="3">单据已退回</option>
	<option value="4">流程已删除</option>

</select>
         </td>
         </tr>
         </table>
    </div>

      <div id="divBtnInfo">
            <table border="0"  style="width:945px;background-color:#e4e4e4;" >
                <tr>  
                   <td>采购退库单明细</td>
                    <td align="right">
                       <a onClick="return printThis();" 
                       id="btnPrint" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-print'"  >打印</a>

                       <a onClick="return historyShow('','6b4abc45-94df-4e62-b82b-93c8f3ebcc09');" 

                       id="A1" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'"  >审核日志</a>


                      
                      
                      
                                            
                       
                    </td>
                </tr>
            </table>
        </div>
      
      <div>
      <!--退库数据明细 start-->
        <table   width="945px" border="1" cellspacing="1" cellpadding="0"  
        style="word-break:break-all;border-collapse:collapse;border:1px solid gray;" > 
        
         <tr>
          <td style="width:30px;">NO.</td>
          <td style="width:50px;">修改</td>
          <td style="width:120px;">商品编码</td>
          <td style="width:120px;">商品名称</td>
          <td style="width:50px;">规格</td>
          <td style="width:30px;">单位</td> 
          <td style="width:50px;text-align:right;">数量</td>
          <td style="width:70px;text-align:right;">退库价</td>
          <td style="width:90px;text-align:right;">金额</td>
          <td>备注</td>
         </tr>
        
        <tr>
          <td style="text-align:center;">1</td>
          <td><span  name="shopMdf"><a href='#' onClick="mdfInfo('e347e8cc-72c1-485d-ad45-90feb90a862d')"  >修改</a></span></td>
          <td>0446536020</td>
          <td>制动摩擦片=37030</td>
          <td></td>
          <td></td> 
          <td style="text-align:right;">1.00</td>
          <td style="text-align:right;">315.81</td>
          <td style="text-align:right;">315.81</td>
          <td></td>
         </tr>
        
        <tr>
          <td>合计</td>
          <td></td>
          <td></td>
          <td></td> 
          <td></td>
          <td></td>
          <td style="text-align:right;">1.00</td>
          <td></td>
          <td style="text-align:right;">315.81</td>
          <td></td>
         </tr>
        
        </table>
      <!--退库数据明细 end-->       
      </div>

      </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="21873565" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWFQKwocS2AQK9m8KuBQLa9PCNDgKCwpDxBwKrw4zuAwK1o/TEBQKrlqPFBQKAurj8CAKhz9WaBwLciobrBgKasfn9BwLVsP7sBgK1roflBALflc2bCALE0fWUBQKZvM/mBALi8POYBgL98POYBgL88POYBgL/8POYBgL+8POYBoKp52ouO1EerBbbNn4VyW031y9T" />
</div></form>

     <script language="javascript" type="text/javascript" >

         /*流程专用*/
         function addFlow() {
             var u = "../FlowBusi/flowBusiBegin.aspx?";
             u = u + "flowType=storeOtherInsertBack"; //流程类型
             u = u + "&thisStepId=0"; //当前步骤 代表当前步骤为第一步
             u = u + "&busiId=6b4abc45-94df-4e62-b82b-93c8f3ebcc09&d=" + new Date();
             u = u + "&flowTitle=" + $("#txtBillNo").val();

             //弹出对话框
             var SizeZ = "dialogWidth:550px;dialogHeight:350px;center:yes;help:no;resizable:no;scroll:no;status:no;";
             var returnValue;
            
          if (navigator.userAgent.indexOf('iPad') != -1 || isChrome()) {
                 returnValue = window.open(u, "exaInfo", "height=350,width=550,top=130,left=480,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no");
                 returnValue.focus();
             } else {
                 returnValue = window.showModalDialog(u, window, SizeZ);
                 pageLoad();
             }
              
            
             if (returnValue == undefined) {
                 returnValue = window.returnValue;
             }
             if (returnValue == "1") {
                 location.href = "storeOtherInsertBackBill.aspx?billGuid=6b4abc45-94df-4e62-b82b-93c8f3ebcc09&d=" + new Date();
             }
             //关闭当前窗体

             return false;

         }

         function printThis() {
             window.open("../storeOtherManage/storeOtherInsertPrint.aspx?billGuid=6b4abc45-94df-4e62-b82b-93c8f3ebcc09&d=" + new Date());
             //window.open("http://192.168.8.118/syPrint.html?http://192.168.8.123/new");
             return false;
         }

         $(function () {
             if ($("#ddlStatus").val() != "0" && $("#ddlStatus").val() != "3" && $("#ddlStatus").val() != "4") {
                 $("span[name='shopMdf']").css("display", "none");
             }
             
         });

    </script>
 


    <script language="javascript" type="text/javascript">
        

        var t1 = "";
        var t2 = "";
        function suppNameToId() {
            t1 = $("#txtSuppName").val();
            t2 = $("#txtSuppId").val();
            $("#txtSuppName").val(t2);
        }

        //供应商选择与反选end
        function suppIdToName() {
            if ($("#txtSuppName").val() == t2 && t1 != "") {
                $("#txtSuppName").val(t1);
            } else {
                $.get("../webSetup/suppIdExec.aspx?date=" + new Date(), { type: "suppId", suppId: $("#txtSuppName").val() }, function (data) {
                    var t = $.parseJSON(data);
                    $("#txtSuppName").val(t.suppName);
                    $("#txtSuppId").val(t.suppId);

                });
            }

        }

        $("#txtSuppName").bind("focus", suppNameToId);
        $("#txtSuppName").bind("blur", suppIdToName);


        function suppChoice() {
            var u = "../webSetup/SupplierSelect.aspx?billGuid=67dd411c-4b67-4624-ac73-4c69d51c7cf6&d=" + new Date();
            var SizeZ = "dialogWidth:550px;dialogHeight:650px;center:yes;help:no;resizable:no;scroll:yes;status:no;";

            if (navigator.userAgent.indexOf('iPad') != -1 || isChrome()) {alert('请直接输入供应商代码!');return;}
            var returnValue = window.showModalDialog(u, '', SizeZ);

            //关闭当前窗体
            if (returnValue != undefined && returnValue != "") {
                var t = returnValue.split("'");
                if (t.length > 1) {
                    $("#txtSuppName").val(t[1]);
                    $("#txtSuppId").val(t[0]);
                }
            }

            return false;

        }

        //选择商品信息
        function shopChoice() {
            var u = "storeOtherInsertBackChoiceShopId.aspx?billGuid=6b4abc45-94df-4e62-b82b-93c8f3ebcc09&d="+new Date();
            var SizeZ = "dialogWidth:800px;dialogHeight:350px;center:yes;help:no;resizable:no;scroll:yes;status:no;";
            var returnValue;
            if (navigator.userAgent.indexOf('iPad') != -1 || isChrome()) {
                returnValue = window.open(u, "shopInfo", "height=400,width=800,top=130,left=480,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no");
                returnValue.focus();
            } else {
                returnValue = window.showModalDialog(u, "shopInfo", SizeZ);
                //关闭当前窗体
                location.href = "storeOtherInsertBackBill.aspx?billGuid=6b4abc45-94df-4e62-b82b-93c8f3ebcc09&d=" + new Date();
            }
          
            return false; 
        }


        function mdfInfo(thisDetailGuid) {

            //状态判断
            if ($("#ddlStatus").val() != "0" && $("#ddlStatus").val() != "3" && $("#ddlStatus").val() != "4") {
                return;
            }

            //修改信息
            var u = "storeOtherInsertBackShopMdf.aspx?billGuid=6b4abc45-94df-4e62-b82b-93c8f3ebcc09&detailGuid="+thisDetailGuid+"&d=" + new Date();
            var SizeZ = "dialogWidth:550px;dialogHeight:550px;center:yes;help:no;resizable:no;scroll:yes;status:no;";
            var returnValue;
            if (navigator.userAgent.indexOf('iPad') != -1 || isChrome()) {
                returnValue = window.open(u, "shopInfo", "height=550,width=550,top=130,left=480,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no");
                returnValue.focus();
            } else {
                returnValue = window.showModalDialog(u, "shopInfo", SizeZ);
                //关闭当前窗体
                location.href = "storeOtherInsertBackBill.aspx?billGuid=6b4abc45-94df-4e62-b82b-93c8f3ebcc09&d=" + new Date();
            }
            return false; 
        }


        var btnFlag = "0";
        function saveCheck() {
            //验证必填项
            if (btnFlag != "0") { return false; } else { btnFlag = "1"; $("#btnSave").attr("disabled", "disabled"); }
            var err = "";
            /*必填项验证 start*/
            if ($("#txtSuppId").val() == "") { err += "供应商必须选择！\n"; }
            if ($("#txtJingShouRen").val() == "") { err += "经手人必须选择！\n"; }
            if ($("#ddlTuiKuSort").val() == "") { err += "退库类型必须选择！\n"; }
            if ($("#ddlFaPiaoSort").val() == "") { err += "发票类型必须选择！\n"; }
            if ($("#ddlCangKu").val() == "") { err += "仓库必须选择！\n"; }
            if (err != "") {
                alert(err);
                btnFlag = "0";
                $("#btnSave").attr("disabled",false);
            } else { 
             __doPostBack('btnSave','');
            } 

            return false;
        }
    </script>


</body>
</html>