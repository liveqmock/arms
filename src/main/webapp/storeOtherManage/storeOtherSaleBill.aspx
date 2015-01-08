
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"><title>
	商品销售单
</title>
    <style type="text/css" >
     td
     {
         white-space:nowrap;
         }
    </style>
 <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>

<script src="../js/DataGrid.js?v=2013050912" type="text/javascript"></script>
<body>
    <form name="form1" method="post" action="storeOtherSaleBill.aspx?j=0&amp;d=Thu+Jan+08+2015+11%3a48%3a53+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTM4MTYyNjAxMg9kFgICAQ9kFg4CBQ8PFgIeBFRleHQFCDIwMTUtMS04ZGQCBw8QDxYGHg1EYXRhVGV4dEZpZWxkBQFiHg5EYXRhVmFsdWVGaWVsZAUBYR4LXyFEYXRhQm91bmRnZBAVAhXkuZ3msZ/kuLDnlLDphY3ku7bku5MAFQIFNjAxMkEAFCsDAmdnZGQCDw8QDxYGHwIFAXYfAQUBdh8DZ2QQFQIN6ZSA5ZSu57G75Z6LMQAVAg3plIDllK7nsbvlnosxABQrAwJnZ2RkAhEPEA8WBh8CBQF2HwEFAXYfA2dkEBUDBuaUtuaNrg/lop7lgLznqI7lj5HnpagAFQMG5pS25o2uD+WinuWAvOeojuWPkeelqAAUKwMDZ2dnZGQCGQ8QDxYGHwIFAXYfAQUBdh8DZ2QQFQMG5b+r6YCSBuiHquWPlgAVAwblv6vpgJIG6Ieq5Y+WABQrAwNnZ2dkZAIbDxAPFgYfAgUBdh8BBQF2HwNnZBAVBAbpobrkuLAG5Lit6YCaBuWchumAmgAVBAbpobrkuLAG5Lit6YCaBuWchumAmgAUKwMEZ2dnZ2RkAiUPEGRkFgFmZGSqhuzSHSJmPHBAAbCSZ2rDMAWD4w==" />
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


    <div style="margin-left:5px;margin-top:2px;" >
    <div>
     <table border="0" style="width:945px;border-bottom:1px solid #b8b8b8;"">
        <tr><td class="titlebg"><span>配件管理</span>(商品销售单)
         </td><td align="right">
           </td></tr>
         </table> 
    </div> 
    <div id="divMain">
         <table border="0" width="950px" >
         <tr>
         <td style="text-align:right;">销售单号:</td>
         <td>
         <input name="txtGuid" type="hidden" id="txtGuid" value="5ed56131-b0c2-4712-a102-2415e5b82343" />
         <input name="txtBillNo" type="text" value="等待生成中" maxlength="30" readonly="readonly" id="txtBillNo" style="width:100px;" /> </td>
         <td  style="text-align:right;">销售日期:</td>
         <td><input name="txtBusiDate" type="text" value="2015-1-8" readonly="readonly" id="txtBusiDate" style="width:100px;" /> </td>
         <td  style="text-align:right;"><span class="requireSpan">*&nbsp;</span>所属仓库:</td>
         <td><select name="ddlCangKu" id="ddlCangKu" style="width:105px;">
	<option value="6012A">九江丰田配件仓</option>
	<option selected="selected" value=""></option>

</select></td>
         <td  style="text-align:right;"><span class="requireSpan">*&nbsp;</span>客户名:</td>
         <td>
          <input name="txtCustId" type="hidden" id="txtCustId" />
          <input name="txtCustName" type="text" maxlength="30" id="txtCustName" style="width:100%;" /> </td>
          <td></td>
         <td  style="text-align:right;">会员号码:</td>
         <td><input name="txtMemberNo" type="text" maxlength="10" id="txtMemberNo" style="width:100px;" /> </td>
         </tr>
         <tr>
         <td  style="text-align:right;"><span class="requireSpan">*&nbsp;</span>销售类型:</td>
         <td><select name="ddlSaleSort" id="ddlSaleSort" style="width:105px;">
	<option value="销售类型1">销售类型1</option>
	<option selected="selected" value=""></option>

</select></td>
         <td  style="text-align:right;"><span class="requireSpan">*&nbsp;</span>发票类型:</td>
         <td><select name="ddlFaPiaoSort" id="ddlFaPiaoSort" style="width:105px;">
	<option value="收据">收据</option>
	<option value="增值税发票">增值税发票</option>
	<option selected="selected" value=""></option>

</select></td>             
         <td  style="text-align:right;">发票号码:</td>
         <td><input name="txtFaPiaoHao" type="text" maxlength="20" id="txtFaPiaoHao" style="width:100px;" /></td>         
         <td  style="text-align:right;">折扣率:</td>
         <td><input name="txtZheKouLv" type="text" value="1" maxlength="5" id="txtZheKouLv" class="easyui-numberbox" data-options="precision:2,min:0,max:1" style="width:100px;width:100%;" />
         </td>
         <td><input type="button" value="Z" style="height:25px;width:25px;" onclick="zheKou()" /></td>
         <td  style="text-align:right;">实收金额:</td>
         <td><input name="txtCheckAmt" type="text" readonly="readonly" id="txtCheckAmt" style="width:100px;" /></td>   
         </tr>
         <tr>
         <td  style="text-align:right;"><span class="requireSpan">*&nbsp;</span>送货方式:</td>
         <td><select name="ddlSongHuoSort" id="ddlSongHuoSort" style="width:105px;">
	<option value="快递">快递</option>
	<option value="自取">自取</option>
	<option selected="selected" value=""></option>

</select></td>
         <td  style="text-align:right;"><span class="requireSpan">*&nbsp;</span>运输公司:</td>
         <td><select name="ddlYunShuComp" id="ddlYunShuComp" style="width:105px;">
	<option value="顺丰">顺丰</option>
	<option value="中通">中通</option>
	<option value="圆通">圆通</option>
	<option selected="selected" value=""></option>

</select></td>             
         <td  style="text-align:right;">负责人员:</td>
         <td><input name="txtFuZeRen" type="text" maxlength="10" id="txtFuZeRen" style="width:100px;" /></td>         
         <td  style="text-align:right;">负责人电话:</td>
         <td><input name="txtFuZeRenTel" type="text" maxlength="11" id="txtFuZeRenTel" style="width:100%;" /></td>
         <td></td>
         <td  style="text-align:right;">往来金额:</td>
         <td><input name="txtWangLaiJinE" type="text" value="0" readonly="readonly" id="txtWangLaiJinE" style="width:100px;" /></td>   
         </tr>

         <tr>
         <td  style="text-align:right;">单据备注:</td>
         <td colspan="7">
         <input name="txtRemarks" type="text" maxlength="100" id="txtRemarks" style="width:100%;" />
         </td> 
         <td></td>
         <td></td>
         <td>
         <select name="ddlStatus" id="ddlStatus" disabled="disabled" style="width:105px;">
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
                   <td>销售单明细</td>
                    <td align="right">
                       <a onclick="return printThis();" 
                       id="btnPrint" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-print'"  >打印</a>

                       <a onclick="return historyShow('','');" 
                       id="A1" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'"  >审核日志</a>

                       <a onclick="return mdfShopSalePrice();" 
                       id="A2" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-edit'"  >修改价格</a>

                      
                      <a onclick="return saveCheck();" id="btnSave" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-save'" href="javascript:__doPostBack('btnSave','')">保存</a>
                                            
                       
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

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="8B166A39" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWIgL9tPreCAK9m8KuBQLa9PCNDgKC+/CYDwKasfn9BwKOzeSDBAK/ntGBCALxmfnCDQKW+qLUBAKW8rqKAwLo6Pf+DwLI3MX4DwKowrzxDQLC+faPAQLE0fWUBQK46OyZDQLK7JbNDgLX0aKADQLU5ZGaAQKSicHuDgK4j67/BQLtq8WNBwL0mcWNBwLu0MbiBAKLm7DfBQKV+NPmAwLQrOKABgKZvM/mBALi8POYBgL98POYBgL88POYBgL/8POYBgL+8POYBgKct7iSDP0NTcE2/qbGkABhTNx5Vz+/8AEz" />
</div></form>




    <script language="javascript" type="text/javascript" >

        /*流程专用*/
        function addFlow() {
            var u = "../FlowBusi/flowBusiBegin.aspx?";
            u = u + "flowType=storeOtherSaleOut"; //流程类型
            u = u + "&thisStepId=0"; //当前步骤 代表当前步骤为第一步
            u = u + "&flowTitle=" + $("#txtBillNo").val();
            u = u + "&busiId=&d=" + new Date();

            //弹出对话框
            var SizeZ = "dialogWidth:550px;dialogHeight:350px;center:yes;help:no;resizable:no;scroll:no;status:no;";


            var returnValue;
            if (navigator.userAgent.indexOf('iPad') != -1 || isChrome()) {
                returnValue = window.open(u, "exaInfo", "height=350,width=550,top=130,left=480,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no");
                returnValue.focus();
            } else {
                returnValue = window.showModalDialog(u, "exaInfo", SizeZ);
            }

            if (returnValue == undefined) {
                returnValue = window.returnValue;
            }
            //关闭当前窗体
            if (returnValue == "1") {
                location.href = "storeOtherSaleBill.aspx?billGuid=&d=" + new Date();
            }
            return false;

        }

        function printThis() {
            window.open("../storeOtherManage/storeOtherSalePrint.aspx?billGuid=&d=" + new Date());
            //window.open("http://192.168.8.118/syPrint.html?http://192.168.8.123/new");
            return false;
        }


        function mdfShopSalePrice() {
            //修改价格
            var u = "../webSetup/storeOtherShopSalePriceChange.aspx?d=" + new Date();
            var SizeZ = "dialogWidth:550px;dialogHeight:550px;center:yes;help:no;resizable:no;scroll:yes;status:no;";


            var returnValue;
            if (navigator.userAgent.indexOf('iPad') != -1 || isChrome()) {
                returnValue = window.open(u, "mdfSalePrice", "height=550,width=600,top=130,left=480,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no");
                returnValue.focus();
            } else {
                returnValue = window.showModalDialog(u, "mdfSalePrice", SizeZ);
            }

            
            return false;
        }

    </script>




    <script language="javascript" type="text/javascript">


        //供应商选择与反选start
         
        function show() {
            alert($("#grid1").html());
            return false;
        }

        //grid使用方法 1定义字段 2 定义名称 3定义css 4定义合计 5 定义规则  明细数据展示处理  数据合计计算
        //调用初始化字段
        syAutoFieldId = ["idNo", "del", "shopId", "shopName", "shopGuiGe", "unit", "shopLoc", "kuCun", "qty", "origprice", "salePrice", "zheKouAll", "priceAll", "remarks"];     /*字段列定义*/
        syAutoFieldName = ["NO.", "", "商品编码", "商品名称", "规格", "单位", "库位", "库存", "数量", "折前价", "折后价", "折扣", "实收金额", "备注"];   /*字段列名称*/
        syAutoGuiZe = ["", "", "", " readOnly='true' ", " readOnly='true' ", " readOnly='true' ", " readOnly='true' ", " readOnly='true' ", " onblur=heJi() ", " readOnly='true' ", " onblur=heJi() ", "  readOnly='true'  ", "  readOnly='true'  ", ""];
        syAutoHeJi = ["", "", "", "", "", "", "", "", "1", "", "", "", "1", ""];
        syAutoCss = ["style='width:20px;text-align:center;'", "style='width:20px;'", "style='width:150px;'", "style='width:150px;'", "style='width:50px;'", "style='width:30px;'", "style='width:30px;'", "style='width:50px;text-align:right;'", "style='width:40px;text-align:right;'", "style='width:40px;text-align:right;'", "style='width:50px;text-align:right;'", "style='width:50px;text-align:right;'", "style='width:60px;text-align:right;'", ""];


        syAutoDivId = "grid1"; //当前div Id
        syAutoTableId = "grid1Table";
        syAutoTableHeJiId = "grid1HeJi";
        syAutoOperModel = "nolock"; //lock 锁定禁止删除修改


        syAutoInit();


        /*页面修改时 数据初始化 start*/
        $(function () {
            var syAutoData = "";
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
                    $("#salePrice-" + i).val(syAutoData2[7]);
                    $("#remarks-" + i).val(syAutoData2[8]);
                    $("#shopLoc-" + i).val(syAutoData2[9]);
                    $("#origprice-" + i).val(syAutoData2[10]);
                }
            }
            heJi();
        })
        /*页面修改时 数据初始化 end*/

        /*明细数据展示*/
        function shopDetail(i) {
            if (isSelect != "123") { return; }
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
                        $("#origprice-" + i).val(t.shopSalePrice);
                        $("#salePrice-" + i).val(t.shopSalePrice);
                        $("#zheKouAll-" + i).val(0);
                        $("#priceAll-" + i).val(t.shopSalePrice);                     
                        $("#remarks-" + i).val("");
                    }
                    //数据写入end
                });

            } else {
                $("#shopId-" + i).val("");
            }
        }


        //折扣快速计算
        function zheKou() {
            var tmp1 = 0;
            var zheKouLv = parseFloat($("#txtZheKouLv").val());
            if (zheKouLv <= 0 || zheKouLv > 1) {zheKouLv = 1;}
            var obj = document.getElementsByName("shopId");
            for (var i = 0; i < obj.length; i++) {
                var id = obj[i].id.replace("shopId-", "");
                if ($.trim($("#shopId-" + i).val()) != "" && $("#delFlag-" + i).val() != "1") {
                    //验证数据类型
                    if ($("#origprice-" + i).val() == "") { $("#origprice-" + i).val("0"); }
                    if ($("#origprice-" + i).val() != "0") {
                        tmp1 = parseFloat($("#origprice-" + i).val()) * zheKouLv;
                        $("#salePrice-"+i).val(tmp1.toFixed(2));
                    }
                }
            }
            heJi();//重新计算合计
        }


        //合计计算 数据修改后 均执行
        function heJi() {
            //保留小数位三位
            //计算单项
            var tmp1 = 0; //数量
            var tmp2 = 0; //折前合计
            var tmp3 = 0; //折后合计
            var tmp4 = 0; //折扣
            var tmp5 = 0;//实际销售总额
            
            var obj = document.getElementsByName("shopId");
            for (var i = 0; i < obj.length; i++) {
                var id = obj[i].id.replace("shopId-", "");
                if ($.trim($("#shopId-" + id).val()) != "" && $("#delFlag-" + id).val() != "1") {
                    //验证数据类型
                    if ($("#origprice-" + id).val() == "") {$("#origprice-" + id).val("0"); }
                    tmp1 = tmp1 + parseFloat($("#qty-" + id).val());
                    tmp2 = parseFloat($("#qty-" + id).val()) * parseFloat($("#origprice-" + id).val());
                    tmp3 = parseFloat($("#qty-" + id).val()) * parseFloat($("#salePrice-" + id).val());
                    tmp4 = tmp2 - tmp3;
                    if (tmp4 < 0) { tmp4 = 0; } 
                    tmp5 = tmp5 + tmp3;
                    $("#priceAll-" + id).val(tmp3.toFixed(2));
                    $("#zheKouAll-" + id).val(tmp4.toFixed(2));                      
                }
            }
            //计算合计
            $("#qty-All").val(tmp1.toFixed(2));
            $("#priceAll-All").val(tmp5.toFixed(2));


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
                    if (parseFloat($("#origprice-" + id).val()) == 0) {alert('原始售价不能为0!');infoAll = "";return; }
                     

                    infoAll += $("#keyId-" + id).val() + "&*&" + $("#delFlag-" + id).val() + "&*&" + $("#idNo-" + id).val() + "&*&";
                    infoAll += $("#shopId-" + id).val() + "&*&" + $("#shopName-" + id).val() + "&*&";
                    infoAll += $("#shopGuiGe-" + id).val() + "&*&" + $("#unit-" + id).val() + "&*&" + $("#kuCun-" + id).val() + "&*&";
                    infoAll += $("#qty-" + id).val() + "&*&" + $("#origprice-" + id).val() + "&*&" + $("#salePrice-" + id).val() + "&*&" + $("#remarks-" + id).val() + "&*&" + $("#shopLoc-" + id).val() + "|*||";
                }

            }

        }



        //保存数据
        var btnFlag = "0";
        function saveCheck() {
            if (btnFlag != "0") { return false; } else { btnFlag = "1"; $("#btnSave").attr("disabled", "disabled"); }
            var err = "";
            /*必填项验证 start*/

            if ($("#ddlCangKu").val() == "") { err += "仓库必须选择！\n"; }
            if ($("#txtCustName").val() == "") { err += "客户名必须输入！\n"; }
            if ($("#ddlSaleSort").val() == "") { err += "销售类型必须选择！\n"; }
            if ($("#ddlFaPiaoSort").val() == "") { err += "发票类型必须选择！\n"; }
            if ($("#ddlSongHuoSort").val() == "") { err += "送货方式必须选择！\n"; }
            if ($("#ddlYunShuComp").val() == "") { err += "运输公司必须选择！\n"; }
           
            sumTag();
            if (infoAll == "") { err += "无明细数据！\n"; }
            if (err != "") {
                alert(err); btnFlag = "0"; $("#btnSave").attr("disabled", false);
                return false;
            }


            /*必填项验证 end*/

            if (isSelect == "123") { $("#txtFShangPinHTML").css("display", "none"); }
            $.post("storeOtherSaleBillExec.aspx?d=" + new Date(), {
                guid: $("#txtGuid").val(),
                type:"storeOtherSaleBill",
                operSort: "add",
                txtBusiDate: $("#txtBusiDate").val(),
                ddlCangKu: $("#ddlCangKu").val(),
                txtCustId: $("#txtCustId").val(),
                txtCustName: $("#txtCustName").val(),
                txtMemberNo: $("#txtMemberNo").val(),
                ddlSaleSort: $("#ddlSaleSort").val(),
                ddlFaPiaoSort: $("#ddlFaPiaoSort").val(),
                txtFaPiaoHao: $("#txtFaPiaoHao").val(),
                txtZheKouLv: $("#txtZheKouLv").val(),
                txtCheckAmt: $("#txtCheckAmt").val(),
                ddlSongHuoSort: $("#ddlSongHuoSort").val(),
                ddlYunShuComp: $("#ddlYunShuComp").val(),
                txtFuZeRen: $("#txtFuZeRen").val(),
                txtFuZeRenTel: $("#txtFuZeRenTel").val(),
                txtRemarks: $("#txtRemarks").val(),

                info: infoAll

            }, function (data) {
                if (data != "") {
                    alert(data); btnFlag = "0"; $("#btnSave").attr("disabled", false);
                } else {
                    //页面转向
                    alert('操作成功！');
                    location.href = "storeOtherSaleBill.aspx?billGuid=" + $("#txtGuid").val() + "&d=" + new Date();
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

    

     <script language="javascript" type="text/javascript">
         //shopId绑定下拉事件  event="onkeyup" for ="document"
        $(function () {
            $("input[name='shopId']").live("keyup", function () {
                
                //event Start

        
        var tmp = event.srcElement.id;        
        obj = $("#"+tmp);
        if(tmp.indexOf("shopId") >-1)
        {
          isSelect ="123";
         if(event.keyCode == 38 || event.keyCode == 40 || event.keyCode == 13)
            { 
                if(event.KeyCode == 13){
                //回车键
                alert("回车");      
            }
        }
         else
        {
            
            if(obj.data("xmlhttp")) obj.data("xmlhttp").abort();//假如有之前的请求存在，则手动停止它                   
            var shopListShow = jQuery.get("storeOtherExec.aspx?d=1"+new Date(),{shopId:$("#"+tmp).val(), type: "" },
            function(data){ 
                isSelect ="";
               jQuery("#txtFShangPinHTML").html(data); //改变html
               //alert(Id);
               var p = jQuery("#"+tmp).offset();
               jQuery("#txtFShangPinHTML").css("display","block");
               jQuery("#txtFShangPinHTML").css("position","absolute");
               jQuery("#txtFShangPinHTML").css("left",p.left);
               jQuery("#txtFShangPinHTML").css("top",p.top+20);          
            });
            obj.data("xmlhttp",shopListShow);//保存当前ajax请求的xmlHttpRequest对象
    }
    
            //下拉start
                   
        var divId ="txtFShangPinHTML";
        //if ($.trim(obj.val()).length == 0) { AutoCompletehide(divId); return; }
        var key = event.keyCode; //键盘输入字符 ,上 38 下 40   
        if (key == 38) {
            sIndex = $("#" + divId + " tr").index($(".dib"));
            if (sIndex <= 0) { sIndex = $("#" + divId + "  tr").length - 1; $("#" + divId + "  tr.dib").removeClass("dib"); };
            $("#" + divId + "  tr").eq(sIndex).removeClass("dib");
            $("#" + divId + "  tr").eq(sIndex - 1).addClass("dib");           
            sIndex = sIndex -1;
            obj.val($("#" + divId + "  tr.dib .dic").text()); return;
        
        }
        if (key == 40) {           
            if(sIndex == 0) { sIndex = $("#" + divId + " tr").index($(".dib"));}
            if (sIndex >= $("#" + divId + "  tr").length - 1) { sIndex = -1; $("#" + divId + "  tr.dib").removeClass("dib"); };
            $("#" + divId + "  tr").eq(sIndex).removeClass("dib");
            $("#" + divId + "  tr").eq(sIndex + 1).addClass("dib");
            sIndex = sIndex+1;
            obj.val($("#" + divId + "  tr.dib .dic").text()); return;
        } 
            
            //下拉end
   }

   // Event end
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
