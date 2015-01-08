
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"><title>
	商品例外出入单
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>

<script src="../js/DataGrid.js?v=2013050912" type="text/javascript"></script>
<body>
    <form name="form1" method="post" action="storeOtherExceptionBill.aspx?j=0&amp;d=Thu+Jan+08+2015+11%3a53%3a06+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMjA0MDQ5OTc0NA9kFgICAQ9kFggCBQ8PFgIeBFRleHQFCDIwMTUtMS04ZGQCBw8QDxYGHg1EYXRhVGV4dEZpZWxkBQFiHg5EYXRhVmFsdWVGaWVsZAUBYR4LXyFEYXRhQm91bmRnZBAVAhXkuZ3msZ/kuLDnlLDphY3ku7bku5MAFQIFNjAxMkEAFCsDAmdnZGQCDw8PFgIfAAUJ5byg5bCP5bmzZGQCEQ8QZGQWAWZkZL13/uvhS5404340yoLBmJG3pge4" />
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
        <tr><td class="titlebg"><span>配件管理</span>(商品例外出入单)
         </td><td align="right">
           </td></tr>
         </table> 
    </div> 
    <div id="divMain">
         <table border="0" width="950px" >
         <tr>
         <td>例外单号:</td>
         <td>
         <input name="txtGuid" type="hidden" id="txtGuid" value="8b8d577e-4ece-4fb3-88e4-eb9e8d4f6970" />
         <input name="txtBillNo" type="text" value="等待生成中" maxlength="30" readonly="readonly" id="txtBillNo" style="width:100px;" /> </td>
         <td>业务日期:</td>
         <td><input name="txtBusiDate" type="text" value="2015-1-8" readonly="readonly" id="txtBusiDate" style="width:100px;" /> </td>
         <td><span class="requireSpan">*&nbsp;</span>所属仓库:</td>
         <td><select name="ddlCangKu" id="ddlCangKu" style="width:105px;">
	<option value="6012A">九江丰田配件仓</option>
	<option selected="selected" value=""></option>

</select></td>
         <td><span class="requireSpan">*&nbsp;</span>出入:</td>
         <td> 
           <select name="ddlIoFlag" id="ddlIoFlag" onchange="exceptionSortAdd('')" style="width:100%;">
	<option value=""></option>
	<option value="1">例入</option>
	<option value="-1">例出</option>

</select>
         </td>
         <td><span class="requireSpan">*&nbsp;</span>单据类型:</td>
         <td>
          <select name="ddlBusiSort" id="ddlBusiSort" style="width:105px;">

</select>
         </td>
         </tr>
          <tr>
         <td>单据备注:</td>
         <td colspan="7">
         <input name="txtRemarks" type="text" maxlength="100" id="txtRemarks" style="width:100%;" />
         </td> 
         <td style="padding-left:5px;">
         <input name="txtRegMan" type="text" value="张小平" readonly="readonly" id="txtRegMan" style="width:80px;display:none;" />
         </td>
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
                   <td>例外出入单明细</td>
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

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="01F2B506" />
</div></form>




    <script language="javascript" type="text/javascript" >

        
        /*例外出入类型添加*/
        function exceptionSortAdd(val) {
            
            $("#ddlBusiSort option").remove();

            var s = $("#ddlIoFlag").val();
            if (s == "1") { 
                $("#ddlBusiSort").append("<option value='盘盈'>盘盈</option>");
                $("#ddlBusiSort").append("<option value='受赠'>受赠</option>");
                $("#ddlBusiSort").append("<option value='其它'>其它</option>");
            }
            if (s == "-1") {
                $("#ddlBusiSort").append("<option value='盘亏'>盘亏</option>");
                $("#ddlBusiSort").append("<option value='损耗'>损耗</option>");
                $("#ddlBusiSort").append("<option value='报废'>报废</option>");
                $("#ddlBusiSort").append("<option value='赠送'>赠送</option>");
                $("#ddlBusiSort").append("<option value='其它'>其它</option>");
            }
            $("#ddlBusiSort").append("<option value=''></option>");
            
            $("#ddlBusiSort").val(val);

        }

           exceptionSortAdd("");
       
        /*流程专用*/
        function addFlow() {
            var u = "../FlowBusi/flowBusiBegin.aspx?";
            u = u + "flowType=storeOtherException"; //流程类型
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
                location.href = "storeOtherExceptionBill.aspx?billGuid=&d=" + new Date();
            }
            return false;

        }

        function printThis() {
            window.open("../storeOtherManage/storeOtherExceptionPrint.aspx?billGuid=&d=" + new Date());
            //window.open("http://192.168.8.118/syPrint.html?http://192.168.8.123/new");
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
        syAutoFieldId = ["idNo", "del", "shopId", "shopName", "shopGuiGe", "unit", "shopLoc", "kuCun", "qty","salePrice", "priceAll", "remarks"];     /*字段列定义*/
        syAutoFieldName = ["NO.", "", "商品编码", "商品名称", "规格", "单位", "库位", "库存", "数量", "单价", "金额", "备注"];   /*字段列名称*/
        syAutoGuiZe = ["", "", "", " readOnly='true' ", " readOnly='true' ", " readOnly='true' ", " readOnly='true' ", " readOnly='true' ", " onblur=heJi() ",  " onblur=heJi() ", "  readOnly='true'  ", ""];
        syAutoHeJi = ["", "", "", "", "", "", "", "", "1", "", "1", ""];
        syAutoCss = ["style='width:20px;text-align:center;'", "style='width:20px;'", "style='width:150px;'", "style='width:150px;'", "style='width:50px;'", "style='width:30px;'", "style='width:30px;'", "style='width:50px;text-align:center;'", "style='width:40px;text-align:center;'", "style='width:50px;text-align:center;'", "style='width:60px;text-align:center;'", ""];


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

                    $("#shopId-" + i).attr("readonly", "readonly");
                    $("#shopName-" + i).attr("readonly", "readonly");

                    $("#shopName-" + i).val(syAutoData2[2]);
                    $("#shopGuiGe-" + i).val(syAutoData2[3]);
                    $("#unit-" + i).val(syAutoData2[4]);
                    $("#kuCun-" + i).val(syAutoData2[5]);
                    $("#qty-" + i).val(syAutoData2[6]);
                    $("#salePrice-" + i).val(syAutoData2[7]);
                    $("#remarks-" + i).val(syAutoData2[8]);
                    $("#shopLoc-" + i).val(syAutoData2[9]);
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
                        $("#salePrice-" + i).val(t.shopAvgCost);
                        $("#priceAll-" + i).val(t.shopAvgCost);
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
            var tmp2 = 0; //折前合计
            var tmp3 = 0; //折后合计
            var tmp4 = 0; //折扣
            var tmp5 = 0; //实际销售总额

            var obj = document.getElementsByName("shopId");
            for (var i = 0; i < obj.length; i++) {
                var id = obj[i].id.replace("shopId-", "");
                if ($.trim($("#shopId-" + id).val()) != "" && $("#delFlag-" + id).val() != "1") {
                    //验证数据类型
                    tmp1 = tmp1 + parseFloat($("#qty-" + id).val());
                    tmp3 = parseFloat($("#qty-" + id).val()) * parseFloat($("#salePrice-" + id).val());
                    tmp4 = tmp2 - tmp3;
                    if (tmp4 < 0) { tmp4 = 0; }
                    tmp5 = tmp5 + tmp3;
                    $("#priceAll-" + id).val(tmp3.toFixed(2)); 
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
                    if (parseFloat($("#salePrice-" + id).val()) == 0) { alert('原始售价不能为0!'); infoAll = ""; return; }
                    
                    infoAll += $("#keyId-" + id).val() + "&*&" + $("#delFlag-" + id).val() + "&*&" + $("#idNo-" + id).val() + "&*&";
                    infoAll += $("#shopId-" + id).val() + "&*&" + $("#shopName-" + id).val() + "&*&";
                    infoAll += $("#shopGuiGe-" + id).val() + "&*&" + $("#unit-" + id).val() + "&*&" + $("#kuCun-" + id).val() + "&*&";
                    infoAll += $("#qty-" + id).val() + "&*&"+ $("#salePrice-" + id).val() + "&*&" + $("#remarks-" + id).val() + "&*&" + $("#shopLoc-" + id).val() + "|*||";
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
            if ($("#ddlIoFlag").val() == "") { err += "出入标志必须选择！\n"; }
            if ($("#ddlBusiSort").val() == "") { err += "单据类型必须选择！\n"; }

            sumTag();
            if (infoAll == "") { err += "无明细数据！\n"; }
            if (err != "") {
                alert(err); btnFlag = "0"; $("#btnSave").attr("disabled", false);
                return false;
            }


            /*必填项验证 end*/

            if (isSelect == "123") { $("#txtFShangPinHTML").css("display", "none"); }
            $.post("storeOtherExceptionBillExec.aspx?d=" + new Date(), {
                guid: $("#txtGuid").val(),
                type: "storeOtherException",
                operSort: "add",
                txtBusiDate: $("#txtBusiDate").val(),
                ddlCangKu: $("#ddlCangKu").val(),
                ddlCangKuName:$("#ddlCangKu option:selected").text(),
                ddlIoFlag: $("#ddlIoFlag").val(),
                ddlBusiSort: $("#ddlBusiSort").val(),
                txtRemarks: $("#txtRemarks").val(),

                info: encodeURIComponent(infoAll)

            }, function (data) {
                if (data != "") {
                    alert(data); btnFlag = "0"; $("#btnSave").attr("disabled", false);
                } else {
                    //页面转向
                    alert('操作成功！');
                    location.href = "storeOtherExceptionBill.aspx?billGuid=" + $("#txtGuid").val() + "&d=" + new Date();
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
