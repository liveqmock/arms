
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	采购定单
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<script src="../js/DataGrid.js?v=2013050912" type="text/javascript"></script> 
<body>
    <form name="form1" method="post" action="storeOtherCaiGouBill.aspx?j=0&amp;d=Thu+Jan+08+2015+11%3a39%3a23+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJLTQwMDk0ODU4D2QWAgIBD2QWCAIFDw8WAh4EVGV4dAUIMjAxNS0xLThkZAINDxAPFgYeDURhdGFUZXh0RmllbGQFAWIeDkRhdGFWYWx1ZUZpZWxkBQFhHgtfIURhdGFCb3VuZGdkEBUCFeS5neaxn+S4sOeUsOmFjeS7tuS7kwAVAgU2MDEyQQAUKwMCZ2dkZAIXDxBkZBYBZmQCGQ9kFgICAQ8PFgQeB0VuYWJsZWRnHgdWaXNpYmxlZ2RkZF8KatGTIOnye2LZuMoOtyi73zWA" />
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


    <div style="margin-left:20px;margin-top:2px;" >
    
    <div>
    <table border="0" style="width:945px;border-bottom:1px solid #b8b8b8;"">
        <tr><td class="titlebg"><span>配件管理</span>(采购定单)
         </td><td align="right">
           </td></tr>
         </table> 
    </div> 

    <div id="divMain">
         <table border="0" width="950px" >
         <tr>
         <td align="right">采购单号:</td>
         <td>
         <input name="txtGuid" type="hidden" id="txtGuid" value="5cc7efa3-e176-4c4f-b64d-b1ef8c82158e" />
         <input name="txtBillNo" type="text" value="等待生成中" maxlength="30" readonly="readonly" id="txtBillNo" /> </td>
         <td>订购日期:</td>
         <td><input name="txtOrderDate" type="text" value="2015-1-8" readonly="readonly" id="txtOrderDate" /> </td>
         <td><span class="requireSpan">*&nbsp;</span>供应商:</td>
         <td>
          <input name="txtSuppId" type="hidden" id="txtSuppId" />
          <input name="txtSuppName" type="text" maxlength="30" id="txtSuppName" style="width:100%;" />
          </td>
          <td>
          <input type="button" value="C" style="height:25px;width:25px;" onclick="suppChoice()" />
          </td>
         <td>经手人:</td>
         <td><input name="txtJingShouRen" type="text" value="张小平" id="txtJingShouRen" /> </td>
         </tr>
         <tr>
        <td  align="right"><span class="requireSpan">*&nbsp;</span>所属仓库:</td>
         <td>
         <select name="ddlCangKu" id="ddlCangKu" style="width:138px;">
	<option value="6012A">九江丰田配件仓</option>
	<option selected="selected" value=""></option>

</select>
         </td>
         <td>预约订金:</td>
         <td><input name="txtOrderJinE" type="text" value="0" id="txtOrderJinE" class="easyui-numberbox" data-options="min:0,max:900000,precision:2" /> </td>
         <td>结算方式:</td>
         <td>
         <select name="ddlChkType" id="ddlChkType" style="width:100%;">
	<option value="月结">月结</option>
	<option value="现结">现结</option>

</select>
         </td>
         <td></td>
         <td>发票类型:</td>
         <td>
         <select name="ddlFaPiaoType" id="ddlFaPiaoType" style="width:138px;">

</select>
          </td>
         </tr>
         <tr>
         <td  align="right">单据备注:</td>
         <td colspan="5">
         <input name="txtRemarks" type="text" maxlength="100" id="txtRemarks" style="width:100%;" />
         </td>
         <td></td>
         <td></td>
         <td>
         <select name="ddlStatus" id="ddlStatus" disabled="disabled" style="width:138px;">
	<option selected="selected" value="0">待提交审核</option>
	<option value="1">审核中</option>
	<option value="2">审核完毕</option>
	<option value="3">审核已退回</option>
	<option value="4">审核已删除</option>

</select>
         </td>
         </tr>
         </table>
    </div>

      <div id="divBtnInfo">
            <table border="0"  style="width:945px;background-color:#e4e4e4;" >
                <tr>  
                   <td>采购单明细</td>
                    <td align="right">
                       <a onclick="return printThis();" 
                       id="btnPrint" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-print'"  >打印</a>

                       <a onclick="return historyShow('','');" 
                       id="A1" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'"  >审核日志</a>


                      
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

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="37E78FA3" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWEwKCja3PDwK9m8KuBQLa9PCNDgKz7qO8BwKrw4zuAwK1o/TEBQKrlqPFBQKasfn9BwKOzeSDBAKH95CiAQK/0+2qCwKH6u2qCwKZvM/mBALi8POYBgL98POYBgL88POYBgL/8POYBgL+8POYBgKct7iSDH1Q8aE51yhQBY+W9+Tu2f0Izuko" />
</div></form>




    <script language="javascript" type="text/javascript" >

        /*流程专用*/
        function addFlow() {            
            var u = "../FlowBusi/flowBusiBegin.aspx?";
            u = u + "flowType=storeOtherCaiGouBill"; //流程类型
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
                returnValue = window.showModalDialog(u, window, SizeZ);               
            }
            //关闭当前窗体
            if (returnValue == "1") {
            location.href = "storeOtherCaiGouBill.aspx?billGuid=&d=" + new Date();
            }
            return false;

        }

        function printThis() {
            alert('进入样板打印!');
            window.open("storeOtherCaiGouBillPrint.aspx");
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
            if ($("#txtSuppName").val() == t2 && t1 !="") {               
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

            if (navigator.userAgent.indexOf('iPad') != -1 || isChrome()) {alert('此模式下禁止使用此功能！');  return false;}
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
         syAutoFieldId   = ["idNo","del","shopId", "shopName","shopGuiGe","unit","kuCun","qty","price","priceAll","remarks"];     /*字段列定义*/
         syAutoFieldName = ["NO.","","商品编码","商品名称","规格","单位","库存","数量","价格","金额","备注"];   /*字段列名称*/

         syAutoGuiZe = ["", "", "", " readOnly='true' ", " readOnly='true' ", " readOnly='true' ", " readOnly='true' ", " onblur=heJi() ", " onblur=heJi() ", "", ""];
         syAutoHeJi = ["","","", "", "", "", "", "1", "", "1", ""];
         syAutoCss = ["style='width:20px;'", "style='width:20px;'", "style='width:150px;'", "style='width:150px;'", "style='width:50px;'", "style='width:30px;'", "style='width:30px;text-align:right;'", "style='width:40px;text-align:right;'", "style='width:40px;text-align:right;'", "style='width:60px;text-align:right;'", ""];


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
                    $("#price-" + i).val(syAutoData2[7]);
                    $("#remarks-" + i).val(syAutoData2[8]);

                }
            }
            heJi();
        })
        /*页面修改时 数据初始化 end*/

        /*明细数据展示*/
        function shopDetail(i) {
            if (isSelect != "123") {return;}
            var a = $("#shopId-" + i).val(); 
            if (a != "") {
                //加载明细数据
                $.get("storeOtherExec.aspx?d=" + new Date(), { shopId:a,type: "1" }, function (data) {
                    var t = $.parseJSON(data);
                    //数据写入start
                    if (t.shopId != "") {
                        $("#shopId-" + i).val(t.shopId);
                        $("#shopName-" + i).val(t.shopName);
                        $("#shopGuiGe-" + i).val(t.shopGuiGe);
                        $("#unit-" + i).val(t.unit);
                        $("#kuCun-" + i).val(t.kuCun);
                        $("#qty-" + i).val(1);
                        $("#price-" + i).val(t.shopAvgCost);
                        $("#remarks-" + i).val("");
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
            var tmp3 = 0;//临时合计项计算

            var obj = document.getElementsByName("shopId");
            for (var i = 0; i < obj.length; i++) {
                var id = obj[i].id.replace("shopId-", "");
                if ($.trim($("#shopId-" + i).val()) != "" && $("#delFlag-" + i).val() !="1") {
                    //验证数据类型
                    tmp1 = tmp1 + parseFloat($("#qty-"+i).val());
                    tmp3 = parseFloat($("#qty-"+i).val()) * parseFloat($("#price-"+i).val());
                    tmp2 = tmp2 + tmp3;
                    $("#priceAll-"+i).val(tmp3.toFixed(3));
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
                if ($.trim($("#shopId-" + i).val()) != "") {
                    infoAll += $("#keyId-" + i).val() + "&*&" + $("#delFlag-" + i).val() + "&*&" + $("#idNo-" + i).val() + "&*&";
                    infoAll += $("#shopId-" + i).val() + "&*&" + $("#shopName-" + i).val() + "&*&";

                    infoAll += $("#shopGuiGe-" + i).val() + "&*&" + $("#unit-" + i).val() + "&*&" + $("#kuCun-" + i).val() + "&*&";
                    infoAll += $("#qty-" + i).val() + "&*&" + $("#price-" + i).val() + "&*&" + $("#remarks-" + i).val() + "|*||";
                }
            
            }

        }



        //保存数据
        var btnFlag = "0";
        function saveCheck() {
            if (btnFlag != "0") { return false; } else {btnFlag = "1";$("#btnSave").attr("disabled","disabled");}
            var err = "";
            /*必填项验证 start*/
            if ($("#txtSuppId").val() == "") { err += "供应商必须选择！\n"; }
            if ($("#txtJingShouRen").val() == "") { err += "经手人必须选择！\n"; }
            if ($("#ddlCangKu").val() == "") { err += "仓库必须选择！\n"; }
            if ($("#txtOrderJinE").val() == "") { err += "订金必须选择！\n"; }

            if (err != "") {
                alert(err); btnFlag = "0"; $("#btnSave").attr("disabled", false);
                return false;
            }


            /*必填项验证 end*/

            if (isSelect == "123") { $("#txtFShangPinHTML").css("display", "none"); }
            sumTag();
            $.post("storeOtherCaiGouExec.aspx?d=" + new Date(), {
                guid: $("#txtGuid").val(),
                operSort: "add",
                txtSuppId: $("#txtSuppId").val(),
                txtSuppName: $("#txtSuppName").val(),
                txtJingShouRen: $("#txtJingShouRen").val(),
                txtStoreId: $("#ddlCangKu").val(),
                txtOrderJin: $("#txtOrderJinE").val(),
                txtChkType: $("#ddlChkType").val(),
                txtFaPiaoSort: $("#ddlFaPiaoType").val(),
                txtRemarks: $("#txtRemarks").val(),
                info: infoAll

            }, function (data) {
                if (data != "") {
                    alert(data); btnFlag = "0"; $("#btnSave").attr("disabled", false);
                } else {
                    //页面转向
                    alert('操作成功！');
                    location.href = "storeOtherCaiGouBill.aspx?billGuid=" + $("#txtGuid").val() + "&d=" + new Date();
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
             $("input[name='shopId']").live("keyup", function (event) {
                 //event Start
                 var ev = event || window.event; 
				 var tmp = ev.srcElement ? ev.srcElement.id : ev.target.id; 
                 obj = $("#" + tmp);
                 if (tmp.indexOf("shopId") > -1) {
                     isSelect = "123";
                     if (ev.keyCode == 38 || ev.keyCode == 40 || ev.keyCode == 13) {
                         if (ev.KeyCode == 13) {
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

                 //Event End
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