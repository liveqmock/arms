
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"><title>
	采购入库单
</title>


    <script language="javascript" type="text/javascript" >

        function shopAdd() { 
            var returnValue;
                 u ="../webSetup/storeOtherShopAdd.aspx?d="+new Date();
            if (navigator.userAgent.indexOf('iPad') != -1 || isChrome()) {
                returnValue = window.open(u, "shopAdd", "height=400,width=800,top=130,left=480,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no");
                returnValue.focus();
            } else {
                returnValue = window.showModalDialog(u,"shopAdd", "dialogWidth=800px;dialogHeight=400px");                 
            }

            return false;
        }

        function showNextBill() {
            location.href = "storeOtherInsertBill.aspx?j=0&d=" + new Date();
            return false;
        }


        function pageLoad() {
            location.href = "storeOtherInsertBill.aspx?billGuid=6ee9a462-5b98-43a0-8570-12a961de169e&d=" + new Date();
        }

    </script>

 <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>

<script src="../js/DataGrid.js?v=2013050912" type="text/javascript"></script>
<body>
    <form name="form1" method="post" action="storeOtherInsertBill.aspx?billGuid=6ee9a462-5b98-43a0-8570-12a961de169e&amp;d=Thu+Jan+08+2015+11%3a45%3a57+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTUxMDE2OTczMw9kFgICAQ9kFg4CAw8PFgIeBFRleHQFD1BKUksyMDE1MDEwODAwM2RkAgUPDxYCHwAFEDIwMTUtMS04IDg6NTQ6MDZkZAINDxAPFgYeDkRhdGFWYWx1ZUZpZWxkBQF2Hg1EYXRhVGV4dEZpZWxkBQF2HgtfIURhdGFCb3VuZGdkEBUDDOmHh+i0reWFpeW6kwzorqLotK3lhaXlupMAFQMM6YeH6LSt5YWl5bqTDOiuoui0reWFpeW6kwAUKwMDZ2dnZGQCDw8QDxYGHwIFAWIfAQUBYR8DZ2QQFQEV5Lmd5rGf5Liw55Sw6YWN5Lu25LuTFQEFNjAxMkEUKwMBZ2RkAhEPEA8WBh8BBQF2HwIFAXYfA2dkEBUDBuaUtuaNrg/lop7lgLznqI7lj5HnpagAFQMG5pS25o2uD+WinuWAvOeojuWPkeelqAAUKwMDZ2dnZGQCFw8QZGQWAQICZAIZD2QWCGYPDxYCHgdWaXNpYmxlZ2RkAgIPFgIfBGdkAgQPDxYCHwRoZGQCBQ8PFgIfBGcWAh4Hb25jbGljawVwcmV0dXJuIHNlbmRNc2coJ3N0b3JlT3RoZXJNYW5hZ2UnLCdzdG9yZU90aGVySW5zZXJ0QmlsbC5hc3B4JywnYmlsbEd1aWQnLCc2ZWU5YTQ2Mi01Yjk4LTQzYTAtODU3MC0xMmE5NjFkZTE2OWUnKWRkegwKqg1bJgQKd8zfeWh/bQTsEGo=" />
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
     <table border="0" style="width:960px;border-bottom:1px solid #b8b8b8;"">
        <tr><td class="titlebg"><span>配件管理</span>(采购入库单)
         </td><td align="right">
           </td></tr>
         </table> 
    </div> 
    <div id="divMain" >
         <table border="0" width="960px" >
         <tr>
         <td style="text-align:right;">入库单号:</td>
         <td>
         <input name="txtGuid" type="hidden" id="txtGuid" value="6ee9a462-5b98-43a0-8570-12a961de169e" />
         <input name="txtBillNo" type="text" value="PJRK20150108003" maxlength="30" readonly="readonly" id="txtBillNo" /> </td>
         <td>入库日期:</td>
         <td><input name="txtRuKuDate" type="text" value="2015-1-8 8:54:06" readonly="readonly" id="txtRuKuDate" /> </td>
         <td><span class="requireSpan">*&nbsp;</span>供应商:</td>
         <td >
          <input name="txtSuppId" type="hidden" id="txtSuppId" value="APC16" />
          <input name="txtSuppName" type="text" value="一汽丰田" maxlength="50" id="txtSuppName" style="width:100%" />
          </td>
          <td>
          <input type="button" value="C" style="height:25px;width:25px;" onclick="suppChoice()" />
          </td>
         <td>经手人:</td>
         <td><input name="txtJingShouRen" type="text" value="吴可" maxlength="30" id="txtJingShouRen" /> </td>
         </tr>
         <tr>
         <td  style="text-align:right;"><span class="requireSpan">*&nbsp;</span>入库类型:</td>
         <td>
         <select name="ddlRuKuSort" id="ddlRuKuSort" style="width:138px;">
	<option value="采购入库">采购入库</option>
	<option selected="selected" value="订购入库">订购入库</option>
	<option value=""></option>

</select>
         </td>
        <td><span class="requireSpan">*&nbsp;</span>所属仓库:</td>
         <td>
         <select name="ddlCangKu" id="ddlCangKu" style="width:138px;">
	<option selected="selected" value="6012A">九江丰田配件仓</option>

</select>
         </td>
         <td><span class="requireSpan">*&nbsp;</span>收票类型:</td>
         <td>
         <select name="ddlFaPiaoType" id="ddlFaPiaoType" style="width:150px">
	<option value="收据">收据</option>
	<option selected="selected" value="增值税发票">增值税发票</option>
	<option value=""></option>

</select>
          </td>
          <td></td>                
         <td><span class="requireSpan">*&nbsp;</span>发票号:</td>
         <td>
          <input name="txtFaPiaoHao" type="text" value="SW43476" maxlength="20" id="txtFaPiaoHao" />
         </td>
         </tr>
         <tr  style="text-align:right;">
         <td>单据备注:</td>
         <td colspan="5">
         <input name="txtRemarks" type="text" maxlength="100" id="txtRemarks" style="width:100%;" />
         </td>
         <td></td>
         <td></td>
         <td style="text-align:left;"><select name="ddlStatus" id="ddlStatus" disabled="disabled" style="width:138px;">
	<option value="0">待提交审核</option>
	<option value="1">审核中</option>
	<option selected="selected" value="2">审核完毕</option>
	<option value="3">单据已退回</option>
	<option value="4">流程已删除</option>

</select>
         </td>
         </tr>
         </table>
    </div>

      <div id="divBtnInfo">
            <table border="0"  style="width:945px;background-color:#e4e4e4;"  >
                <tr>  
                   <td>采购单明细</td>
                    <td align="right">
                        <a onclick="return showNextBill();" id="lnkNextBill" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'" href="javascript:__doPostBack('lnkNextBill','')">下一单</a>
                       <a id="A1" onclick="return shopAdd();" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'">商品信息</a>                       
                       <a id="lnkPrint" onclick="return printThis();" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-print'">打印</a>
                       <a onclick="return historyShow('','6ee9a462-5b98-43a0-8570-12a961de169e');"  
                       id="lnkExaInfo" visible="false" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'"  >审核日志</a>
                      
                      
                      <a onclick="return sendMsg('storeOtherManage','storeOtherInsertBill.aspx','billGuid','6ee9a462-5b98-43a0-8570-12a961de169e');" id="btnMsg" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'" href="javascript:__doPostBack('btnMsg','')">发送消息</a>    
                       <a onclick="return parWinClose();" id="lnkCancel" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-cancel'" href="javascript:__doPostBack('lnkCancel','')"></a>
                                     
                       
                    </td>
                </tr>
            </table>
        </div>
          


    <div>
    <!--js自动生成明细数据 start-->
      <div id="grid1"></div>
      <div id="grid1HeJi"></div>
    <!--js自动生成明细数据 end-->
      <div id="txtFShangPinHTML" ></div>
    </div>

    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="0674BE1C" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWGAKmw4rXDgK9m8KuBQLa9PCNDgL2v/PlDwKrw4zuAwK1o/TEBQKrlqPFBQKu/q70BwLLoq/0BwLEi5i+CgKasfn9BwLVsP7sBgK1roflBALflc2bCALE0fWUBQKZvM/mBALi8POYBgL98POYBgL88POYBgL/8POYBgL+8POYBgLAzZvRDQL1ks3EAgKmtLTPAQuqwX/pBxiTXGH0yT5sC8stcgNh" />
</div></form>




    <script language="javascript" type="text/javascript" >

        /*流程专用*/
        function addFlow() {
            var u = "../FlowBusi/flowBusiBegin.aspx?";
            u = u + "flowType=storeOtherInsert"; //流程类型
            u = u + "&thisStepId=0"; //当前步骤 代表当前步骤为第一步
            u = u + "&busiId=6ee9a462-5b98-43a0-8570-12a961de169e&d=" + new Date();
            u = u + "&flowTitle=" + $("#txtBillNo").val();

            //弹出对话框
            var SizeZ = "dialogWidth:550px;dialogHeight:350px;center:yes;help:no;resizable:no;scroll:no;status:no;";

            var returnValue; 
            if (navigator.userAgent.indexOf('iPad') != -1 || isChrome()) {
                returnValue = window.open(u, "exaInfo","height=350,width=550,top=130,left=480,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no");
                returnValue.focus();
            } else {
                returnValue = window.showModalDialog(u, "exaInfo", SizeZ);               
            }

            if (returnValue == undefined) {
                returnValue = window.returnValue;
            }

            if (returnValue == "1") {
                pageLoad();
            }
            //关闭当前窗体
            return false;
        }

        function printThis() {
            window.open("../storeOtherManage/storeOtherInsertPrint.aspx?billGuid=6ee9a462-5b98-43a0-8570-12a961de169e&d=" + new Date());
            //window.open("http://192.168.8.118/syPrint.html?http://192.168.8.123/new");
            return false;
        }

    </script>




    <script language="javascript" type="text/javascript">


        //供应商选择与反选start
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
            var u = "../webSetup/SupplierSelect.aspx?d=" + new Date();
            var SizeZ = "dialogWidth:550px;dialogHeight:350px;center:yes;help:no;resizable:no;scroll:yes;status:no;";
            if (navigator.userAgent.indexOf('iPad') != -1 || isChrome()) { alert('请直接输入供应商代码!'); return; }

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


        function show() {
            alert($("#grid1").html());
            return false;
        }

        //grid使用方法 1定义字段 2 定义名称 3定义css 4定义合计 5 定义规则  明细数据展示处理  数据合计计算
        //调用初始化字段
        syAutoFieldId = ["idNo", "del", "shopId", "shopName", "shopGuiGe", "unit", "shopLoc", "kuCun", "qty", "price", "NoTaxPriceAll", "TaxAll", "priceAll", "remarks","salePrice"];     /*字段列定义*/
        syAutoFieldName = ["NO.", "", "商品编码", "商品名称", "规格", "单位","库位","库存", "数量", "入库价","不含税金额","税金", "金额", "备注","销售价"];   /*字段列名称*/
        syAutoGuiZe = ["", "", "", " readOnly='true' ", " readOnly='true' ", " readOnly='true' ", " readOnly='true' ", " readOnly='true' ", " onblur=heJi() ", " onblur=heJi() ", "", "", "", "", " readOnly='true' "];
        syAutoHeJi = ["", "", "", "", "","","", "", "1", "","","", "1", ""];
        syAutoCss = ["style='width:20px;text-align:center;'", "style='width:20px;'", "style='width:130px;'", "style='width:130px;'", "style='width:50px;'", "style='width:60px;'", "style='width:30px;'", "style='width:50px;text-align:right;'", "style='width:40px;text-align:right;'", "style='width:40px;text-align:right;'", "style='width:50px;text-align:right;'", "style='width:50px;text-align:right;'", "style='width:70px;text-align:right;'", "",""];


        syAutoDivId = "grid1"; //当前div Id
        syAutoTableId = "grid1Table";
        syAutoTableHeJiId = "grid1HeJi";
        syAutoOperModel = "lock"; //lock 锁定禁止删除修改


        syAutoInit();


        /*页面修改时 数据初始化 start*/
        $(function () {
            var syAutoData = "137c615e-6e00-4869-8617-94e9383fb93d&*&0446536020&*&制动摩擦片=37030&*&&*&&*&1.00&*&10.00&*&411.500&*&&*&F/O料位&*&599.00|*|";
            var syAutoData1 = syAutoData.split("|*|");
            for (var i = 0; i < syAutoData1.length; i++) {
                var syAutoData2 = syAutoData1[i].split("&*&");
                if (syAutoData2.length > 4) {
                    //绑定数据  流水号0 商品编号1，商品名称2,规格3,单位4,库存5,数量6,单价7,备注8
                    if (i < syAutoI) { syAutoAddRow(); }

                    $("#keyId-" + i).val(syAutoData2[0]);
                    $("#shopId-" + i).val(syAutoData2[1]);
                    $("#shopName-" + i).val(syAutoData2[2]);
                    $("#shopGuiGe-" + i).val(syAutoData2[3]);
                    $("#unit-" + i).val(syAutoData2[4]);
                    $("#kuCun-" + i).val(syAutoData2[5]);
                    $("#qty-" + i).val(syAutoData2[6]);
                    $("#price-" + i).val(syAutoData2[7]);
                    $("#remarks-" + i).val(syAutoData2[8]);
                    $("#shopLoc-" + i).val(syAutoData2[9]);
                    $("#salePrice-" + i).val(syAutoData2[10]);
                }
            }
            heJi();
        })
        /*页面修改时 数据初始化 end*/

        /*明细数据展示*/
        function shopDetail(i) {
            //if (isSelect != "123") { return; }
            var a = $("#shopId-" + i).val();
            if (a != "") {
                //加载明细数据
                $.get("storeOtherExec.aspx?d=" + new Date(), { shopId: a, type: "1" }, function (data) {
                    var t = $.parseJSON(data);
                    //数据写入start
                    if (t.shopId != "") {
                        $("#shopId-" + i).val(t.shopId);
                        $("#shopName-" + i).val(t.shopName);
                        $("#shopGuiGe-" + i).val(t.shopGuiGe);
                        $("#unit-" + i).val(t.unit);
                        $("#kuCun-" + i).val(t.kuCun);
                        $("#shopLoc-" + i).val(t.shopLoc);
                        $("#qty-" + i).val(1);
                        $("#price-" + i).val(t.shopAvgCost);
                        $("#remarks-" + i).val("");
                        $("#salePrice-" + i).val(t.shopSalePrice);
                        $("#txtFShangPinHTML").css("display", "none");
                        heJi();
                    }
                    //数据写入end
                });

            } else {
                $("#shopId-" + i).val("");
            }
        }


        //合计计算 数据修改后 均执行
        function heJi() {
            //保留小数位三位
            //计算单项
            var tmp1 = 0; //数量
            var tmp2 = 0; //金额合计
            var tmp3 = 0; //临时合计项计算

            var obj = document.getElementsByName("shopId");
            for (var i = 0; i < obj.length; i++) {
                var id = obj[i].id.replace("shopId-", "");
                if ($.trim($("#shopId-" + id).val()) != "" && $("#delFlag-" + id).val() != "1") {
                    //验证数据类型
                    tmp1 = tmp1 + parseFloat($("#qty-" + id).val());
                    tmp3 = parseFloat($("#qty-" + id).val()) * parseFloat($("#price-" + id).val());

                    tmp2 = tmp2 + tmp3;
                    $("#priceAll-" + id).val(tmp3.toFixed(3));

                    if (jQuery("#ddlFaPiaoType").val() == "增值税发票") {
                        $("#NoTaxPriceAll-" + id).val((tmp3 / 1.17).toFixed(2));
                        $("#TaxAll-" + id).val((tmp3 - (tmp3 / 1.17).toFixed(2)).toFixed(2));
                    } else {
                        $("#NoTaxPriceAll-" + id).val(tmp3.toFixed(2));
                        $("#TaxAll-" + id).val(0);
                    
                    }
                    


                }

            }
            //计算合计
            $("#qty-All").val(tmp1.toFixed(3));
            $("#priceAll-All").val(tmp2.toFixed(3));


        }

        //汇总计算---生成合计标签
        var infoAll = "";
        function sumTag() {
            infoAll = "";
            //流水号 删除标志 排列 商品编码 商品名称 规格 单位 库存 数量 单价 备注 
            var obj = document.getElementsByName("shopId");
            for (var i = 0; i < obj.length; i++) {
                var id = obj[i].id.replace("shopId-", "");
                if ($.trim($("#shopId-" + id).val()) != "") {
                    infoAll += $("#keyId-" + id).val() + "&*&" + $("#delFlag-" + id).val() + "&*&" + $("#idNo-" + id).val() + "&*&";
                    infoAll += $("#shopId-" + id).val() + "&*&" + $("#shopName-" + id).val() + "&*&";
                    infoAll += $("#shopGuiGe-" + id).val() + "&*&" + $("#unit-" + id).val() + "&*&" + $("#kuCun-" + id).val() + "&*&";
                    infoAll += $("#qty-" + id).val() + "&*&" + $("#price-" + id).val() + "&*&" + $("#remarks-" + id).val() + "&*&" + $("#shopLoc-" + id).val() + "|*||";
                }

            }

        }



        //保存数据
        var btnFlag = "0";
        function saveCheck() {
            if (btnFlag != "0") { return false; } else { btnFlag = "1"; $("#btnSave").attr("disabled", "disabled"); }
            var err = "";
            /*必填项验证 start*/
            if ($("#txtSuppId").val() == "") { err += "供应商必须选择！\n"; }
            if ($("#txtJingShouRen").val() == "") { err += "经手人必须选择！\n"; }
            if ($("#ddlRuKuSort").val() == "") { err += "入库类型必须选择！\n"; }
            if ($("#ddlCangKu").val() == "") { err += "仓库必须选择！\n"; }
            if ($("#ddlFaPiaoType").val() == "") { err += "收票类型必须选择！\n"; }
            //if ($("#txtFaPiaoHao").val() == "") { err += "发票号必须选择！\n"; }
            if ($("#txtOrderJinE").val() == "") { err += "订金必须选择！\n"; }
             
            sumTag();

           // isNaN
            if (isNaN($("#qty-All").val())) {err += "数量合计类型异常"; }
            if (isNaN($("#priceAll-All").val())) { err += "金额合计类型异常"; }
           
            if (infoAll == "") { err += "无明细数据！\n"; }
            if (err != "") {
                alert(err); btnFlag = "0"; $("#btnSave").attr("disabled", false);
                return false;
            }


            /*必填项验证 end*/

            if (isSelect == "123") { $("#txtFShangPinHTML").css("display", "none"); }         
            $.post("storeOtherInsertBillExec.aspx?d=" + new Date(), {
                guid: $("#txtGuid").val(),
                operSort: "mdf",
                txtSuppId: $("#txtSuppId").val(),
                txtSuppName: $("#txtSuppName").val(),
                txtJingShouRen: $("#txtJingShouRen").val(),
                txtStoreId: $("#ddlCangKu").val(),
                txtRuKuSort: $("#ddlRuKuSort").val(),
                txtFaPiaoHao: $("#txtFaPiaoHao").val(),
                txtFaPiaoSort: $("#ddlFaPiaoType").val(),
                txtRemarks: $("#txtRemarks").val(),
                info: encodeURIComponent(infoAll)
            }, function (data) {
                if (data != "") {
                    alert(data); btnFlag = "0"; $("#btnSave").attr("disabled", false);
                } else {
                    //页面转向
                    alert('操作成功！');
                    location.href = "storeOtherInsertBill.aspx?billGuid=" + $("#txtGuid").val() + "&d=" + new Date();
                }
            });



            return false;
        }

    </script>


    <script  language="javascript" type="text/javascript">
        var sIndex = 0;       //控制下拉列表选择项
        var isSelect = "123"; //控制是否执行明细数据查询
        function xiaLaMouseOver(obj) {
            isSelect = "123";
            obj.className = "dib";
        }
        function xiaLaMouseOut(obj) {
            isSelect = "";
            obj.className = "dia";
        }
        var isSelect = "";
        function xiaLaMouseClick(obj) {
            $("#" + focusId).val(obj);
            isSelect = "123";
            shopDetail(focusId.replace("shopId-", ""));
            $("#txtFShangPinHTML").css("display", "none");
        }  

    </script>

     <script language="javascript" type="text/javascript" >
        //shopId绑定下拉事件  event="onkeyup" for ="document"
         $(function () {

             if ("" != "") { return; }
             $("input[name='shopId']").live("keyup", function () {

                 //event Start

                 var tmp = event.srcElement.id;
                 obj = $("#" + tmp);
                 if (tmp.indexOf("shopId") > -1) {
                     isSelect = "123";
                     if (event.keyCode == 38 || event.keyCode == 40 || event.keyCode == 13) {
                         if (event.KeyCode == 13) {
                             //回车键
                             alert("回车");
                         }
                     }
                     else {

                         if (obj.data("xmlhttp")) obj.data("xmlhttp").abort(); //假如有之前的请求存在，则手动停止它                   
                         var shopListShow = jQuery.get("storeOtherExec.aspx?d=1" + new Date(), { shopId: $("#" + tmp).val(), type: "" },
            function (data) {
                isSelect = "";
                jQuery("#txtFShangPinHTML").html(data); //改变html
                //alert(Id);
                var p = jQuery("#" + tmp).offset();
                jQuery("#txtFShangPinHTML").css("display", "block");
                jQuery("#txtFShangPinHTML").css("position", "absolute");
                jQuery("#txtFShangPinHTML").css("left", p.left);
                jQuery("#txtFShangPinHTML").css("top", p.top + 20);
            });
                         obj.data("xmlhttp", shopListShow); //保存当前ajax请求的xmlHttpRequest对象
                     }

                     //下拉start

                     var divId = "txtFShangPinHTML";
                     //if ($.trim(obj.val()).length == 0) { AutoCompletehide(divId); return; }
                     var key = event.keyCode; //键盘输入字符 ,上 38 下 40   
                     if (key == 38) {
                         sIndex = $("#" + divId + " tr").index($(".dib"));
                         if (sIndex <= 0) { sIndex = $("#" + divId + "  tr").length - 1; $("#" + divId + "  tr.dib").removeClass("dib"); };
                         $("#" + divId + "  tr").eq(sIndex).removeClass("dib");
                         $("#" + divId + "  tr").eq(sIndex - 1).addClass("dib");
                         sIndex = sIndex - 1;
                         obj.val($("#" + divId + "  tr.dib .dic").text()); return;

                     }
                     if (key == 40) {
                         if (sIndex == 0) { sIndex = $("#" + divId + " tr").index($(".dib")); }
                         if (sIndex >= $("#" + divId + "  tr").length - 1) { sIndex = -1; $("#" + divId + "  tr.dib").removeClass("dib"); };
                         $("#" + divId + "  tr").eq(sIndex).removeClass("dib");
                         $("#" + divId + "  tr").eq(sIndex + 1).addClass("dib");
                         sIndex = sIndex + 1;
                         obj.val($("#" + divId + "  tr.dib .dic").text()); return;
                     }

                     //下拉end    

                 }

                 //event End
             });
         });

   </script>
    <style type="text/css" >
    #grid1Table td 
    {
    	border:1px solid #9a9a9a;
        white-space:nowrap;
        height:15px;
        }
    #grid1Table input
    {
    	margin-left:1px;
    	border:0px;
    	width:95%; 
    	font-size:12px;
    	font-family:微软雅黑;
    	height:15px;
    }
    

        .dic{padding: 0 0 0 3px; text-align: left;}
    	.did, .die{padding: 0 3px 0 0;text-align: right;color: Green;}
    	.dib td{background: #3366CC none repeat scroll 0 0; color: #fff;white-space: nowrap;}

    </style>
</body>
</html>
