 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"><title>
  维修出库单
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>

<script src="../js/DataGrid.js?v=2013050912" type="text/javascript"></script>
<body>
    <form name="form1" method="post" action="storeOtherWeiXiuOutBill.aspx?saleAfterGuid=b0ab6079-4b8e-4975-bc65-5bab3874625e&amp;d=Thu+Jan+08+2015+16%3a13%3a00+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTk0OTIzOTIxMw9kFgICAQ9kFggCBQ8PFgIeBFRleHQFEzIwMTUtMDEtMDggMTY6MTA6MDVkZAILDw8WAh8ABQ5XWEQyMDE1MDEwODAyN2RkAg8PDxYCHwAFCeW8oOWwj+W5s2RkAhUPEA8WBh4NRGF0YVRleHRGaWVsZAUBYh4ORGF0YVZhbHVlRmllbGQFAWEeC18hRGF0YUJvdW5kZ2QQFQEV5Lmd5rGf5Liw55Sw6YWN5Lu25LuTFQEFNjAxMkEUKwMBZ2RkZM8an885LO1IKATYNIuAB0Fr4hwA" />
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


    <div style="margin-left:10px;">
    <div >
     <table border="0" style="width:945px;border-bottom:1px solid #b8b8b8;"">
        <tr><td class="titlebg"><span>配件管理</span>(维修出库单)
         </td><td align="right">
           </td></tr>
         </table> 
    </div> 
    <div id="divMain" >
         <table border="0" width="950px" >
         <tr>
         <td>出货单号:</td>
         <td>
         <input name="txtGuid" type="hidden" id="txtGuid" value="06e95f7c-76f1-4562-ac84-76e4d0510a43" />
         <input name="txtBillNo" type="text" value="等待生成中" maxlength="30" readonly="readonly" id="txtBillNo" /> </td>
         <td>出库时间:</td>
         <td><input name="txtChuKuDate" type="text" value="2015-01-08 16:10:05" readonly="readonly" id="txtChuKuDate" /> </td>
         <td>车主名:</td>
         <td> 
          <input name="txtCheZhuName" type="text" value="周丽芳" maxlength="50" id="txtCheZhuName" style="width:100%" /> 
          </td>
         <td  style="text-align:right;">车牌号:</td>
         <td><input name="txtChePaiHao" type="text" value="赣G2T829" maxlength="30" id="txtChePaiHao" onkeydown="chePaiHaoChange(event)" /> </td>
         </tr>
         <tr>
         <td>维修单号:</td>
         <td>
         <input name="txtWeiXiuBillNo" type="text" value="WXD20150108027" readonly="readonly" id="txtWeiXiuBillNo" />
         </td>
        <td><span class="requireSpan">*&nbsp;</span>收货人:</td>
         <td>
          <input name="txtShouHuoRen" type="text" maxlength="30" id="txtShouHuoRen" />
          <input type="button" value="C" style="height:25px;width:25px;" onclick="shouHuoChoice()" />
         </td>
         <td>经手人:</td>
         <td>
           <input name="txJingShouRen" type="text" value="张小平" readonly="readonly" id="txJingShouRen" style="width:100%" />
          </td>                
         <td  style="text-align:right;">车架号:</td>
         <td>
          <input name="txtVin" type="text" value="LFMAP22CXC0467608" maxlength="20" id="txtVin" />
         </td>
         </tr>
         <tr>
         <td>单据备注:</td>
         <td colspan="5">
         <input name="txtRemarks" type="text" maxlength="100" id="txtRemarks" style="width:100%" />

         </td>
         <td style="text-align:right;"><span class="requireSpan">*&nbsp;</span>所属仓库:</td>
         <td>
         <select name="ddlCangKu" id="ddlCangKu" style="width:138px;">
  <option value="6012A">九江丰田配件仓</option>

</select>
         </td>
         </tr>
         </table>
    </div>

      <div id="divBtnInfo">
            <table border="0"  style="width:945px;background-color:#e4e4e4;"  >
                <tr>  
                   <td>维修出库单明细</td>
                    <td align="right">
                       
                         <a onclick="return syAutoAddRow();" id="A1" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'" href="#">增行</a>     
                         <a onclick="return saveCheck();" id="btnSave" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-save'" href="javascript:__doPostBack('btnSave','')">保存</a>                      
                         <a onclick="return parWinClose();" id="lnkCancel" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-cancel'" href="javascript:__doPostBack('lnkCancel','')">取消</a>     
                            <a onclick="showWeiXiuBill();" 
                            id="lnkShowGongDan"
                             class="easyui-linkbutton"
                              data-options="plain:true" >工单</a>

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

  <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="C010715B" />
  <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWDgKnhti/CgK9m8KuBQLa9PCNDgL/uvTlBQKqx+/iBwKkxr0GAoWTiqEHArnl5NIDAsuGyOoHAv/62voJApm8z+YEApqx+f0HApy3uJIMAqa0tM8BNvJ4WNTHYBPCYjhG7k9PtQFo4jQ=" />
</div></form>




    <script language="javascript" type="text/javascript" >

        function printThis(thisGuid) {
            window.open("../storeOtherManage/storeOtherWeiXiuPrint.aspx?thisGuid=" + thisGuid + "&d=" + new Date());
            //window.open("http://192.168.8.118/syPrint.html?http://192.168.8.123/new");
            return false; 
        }


        function shouHuoChoice() {
           //收货人选择
            var u = "../webSetup/commonManage.aspx?d=" + new Date();
            z = window.open(u, '收货人选择', 'height=400,width=430,top=35,left=160,toolbar=no,menubar=no,scrollbars=yes, resizable=no,location=no, status=no');
            z.focus();

        }

        $("#txtShouHuoRen").bind("blur", changeJingShouRen);
        function changeJingShouRen() { 
            $.get("../webSetUp/commonManageExec.aspx?date=" + new Date(), { type: "jingShouRen", v: $("#txtShouHuoRen").val() }, function (data) {
                    var t = data;
                    if(t !="")
                    {
                        $("#txtShouHuoRen").val(t); 
                    }

                }); 
        }



        //快速进入维修出库单
        function chePaiHaoChange(ev) {
            if (ev.keyCode == 13) {
                $("#btnSave").css("display","none");
                //锁定 保存按钮
                $.get("storeOtherWeiXiuExec.aspx?d=" + new Date(), {
                    type: "weiXiuOutEasyByChePaiHao",
                    chePaiHao: $("#txtChePaiHao").val()
                }, function (data) {
                    if (data.length == 36) {
                        location.href = "storeOtherWeiXiuOutBill.aspx?saleAfterGuid=" + data + "&d=" + new Date();
                    } else {
                        location.href = "storeOtherWeiXiuOutBill.aspx?saleAfterGuid=b0ab6079-4b8e-4975-bc65-5bab3874625e&d=" + new Date();
                    }
                });


            }
        }

      


    </script>




    <script language="javascript" type="text/javascript">

       //初始化帐套信息
        var zhangTaoInfo = $.parseJSON('[{"zhangTaoName":"正常维修","zhangTaoList":[]},{"zhangTaoName":"厂家保修","zhangTaoList":[]},{"zhangTaoName":"大客户(月结)","zhangTaoList":[{"zhangTaoName":"中电投江西核电"},{"zhangTaoName":"国网江西省电力公司九江分公司"},{"zhangTaoName":"九江市开发区管委会"},{"zhangTaoName":"龙达（江西）差别化化学纤维有限公司"},{"zhangTaoName":"九江市人大常委会办公厅"},{"zhangTaoName":"九江市人民防空办公室"},{"zhangTaoName":"中国建筑股份有限公司"},{"zhangTaoName":"九江市纪律检查委员会"},{"zhangTaoName":"江西省交通厅高速交警直属二支队"}]},{"zhangTaoName":"保险","zhangTaoList":[]},{"zhangTaoName":"保险自付","zhangTaoList":[]},{"zhangTaoName":"内结","zhangTaoList":[{"zhangTaoName":"销售部支付"},{"zhangTaoName":"售后部支付"},{"zhangTaoName":"客服部支付"},{"zhangTaoName":"财务部支付"},{"zhangTaoName":"行政人事部支付"},{"zhangTaoName":"精品部支付"},{"zhangTaoName":"市场部支付"},{"zhangTaoName":"总经办支付"}]}]');
        //组合特殊文本
        var zhangTao = "";
        var zhangTaoSelect = "正常维修";
        //组合帐套字符

        if (zhangTao != null) {
            zhangTao = zhangTao + "<option value=''></option>";
            for (var i = 0; i < zhangTaoInfo.length; i++) {
                zhangTao = zhangTao + "<option value='" + zhangTaoInfo[i].zhangTaoName + "'>" + zhangTaoInfo[i].zhangTaoName + "</option>";
            }
        }

        function zhangTaoChange(obj) {zhangTaoSelect = obj.value;}
         

        function show() {
            alert($("#grid1").html());
            return false;
        }

        function showWeiXiuBill() {
            var u = "../saleAfterManage/saleAfterWeiXiuLiShiDetailShowBySaleAfterGuid.aspx?tabId=2&saleAfterGuid=b0ab6079-4b8e-4975-bc65-5bab3874625e&d=" + new Date();
            z = window.open(u, "saleAFterBill", "width=750,height=600,scrollbars=yes");
            z.focus();
            return false;
         }

        //grid使用方法 1定义字段 2 定义名称 3定义css 4定义合计 5 定义规则  明细数据展示处理  数据合计计算
        //调用初始化字段
        syAutoFieldId = ["idNo", "del", "shopId", "shopName", "zhangTao","unit","qty", "avgCost", "zheQianPrice", "price", "priceAll", "kuCun","remarks"];     /*字段列定义*/
        syAutoFieldName = ["NO.", "", "商品编码", "商品名称", "帐套", "单位", "数量", "成本价", "折前价","单价","金额","库存","备注"];   /*字段列名称*/
        syAutoGuiZe = ["", "", "", " readOnly='true' ", " ", " readOnly='true'", "  onblur=heJi()  ", " readOnly='true' ", " readOnly='true' ", "  onblur=heJi()  ", " readOnly='true' ", " readOnly='true' ", " "];   /*字段列名称*/
        syAutoHeJi = ["", "", "", "", " ", "", "1", "", "", " ", "1", "", " "];   /*字段列名称*/

        syAutoCss = ["style='width:20px;text-align:center;'", "style='width:20px;'", "style='width:130px;'", "style='width:130px;'", "style='width:70px;border:none;'", "style='width:30px;'", "style='width:30px;text-align:right;'", "style='width:80px;text-align:right;'", "style='width:80px;text-align:right;'", "style='width:80px;text-align:right;'", "style='width:50px;text-align:right;'", "style='width:50px;text-align:right;'", "style='width:60px;text-align:right;'", ""];


        syAutoDivId = "grid1"; //当前div Id
        syAutoTableId = "grid1Table";
        syAutoTableHeJiId = "grid1HeJi";
        syAutoOperModel = ""; //lock 锁定禁止删除修改


        syAutoInit();


        /*页面修改时 数据初始化 start*/
        $(function () {
            var syAutoData = "";
            var syAutoData1 = syAutoData.split("|*|");
            for (var i = 0; i < syAutoData1.length; i++) {
                var syAutoData2 = syAutoData1[i].split("&*&");
                if (syAutoData2.length > 4) {
                    //绑定数据  "空",商品编码1,商品名称2,所需数量3,帐套4,库存5,单位6,销售价7,成本价8,库位9
                    if (i < syAutoI) { syAutoAddRow(); }

                    $("#shopId-" + i).val(syAutoData2[1]);
                    $("#shopName-" + i).val(syAutoData2[2]);
                    $("#qty-" + i).val(syAutoData2[3]);
                    $("#zhangTao-" + i).val(syAutoData2[4]);
                    $("#kuCun-" + i).val(syAutoData2[5]);
                    $("#unit-" + i).val(syAutoData2[6]);

                    
                    $("#zheQianPrice-" + i).val(syAutoData2[7]);
                    $("#price-" + i).val(syAutoData2[7]);
                    $("#avgCost-" + i).val(syAutoData2[8]);
                    $("#shopLoc-" + i).val(syAutoData2[9]);
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
                        $("#unit-" + i).val(t.unit);
                        $("#kuCun-" + i).val(t.kuCun);
                        $("#shopLoc-" + i).val(t.shopLoc);
                         
                        $("#zhangTao-" + i).val(zhangTaoSelect);

                        $("#qty-" + i).val(1);
                        $("#zheQianPrice-" + i).val(t.shopSalePrice);
                        $("#price-" + i).val(t.shopSalePrice);
                        $("#priceAll-" + i).val(t.shopSalePrice);
                        $("#avgCost-" + i).val(t.shopAvgCost);
                        $("#remarks-" + i).val("");
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
                    $("#priceAll-" + id).val(tmp3.toFixed(2));

                }

            }
            //计算合计
            $("#qty-All").val(tmp1.toFixed(3));
            $("#priceAll-All").val(tmp2.toFixed(3));


        }

        //汇总计算---生成合计标签
        var infoAll = "";
        var zheKouInfo = "";
        function sumTag() {
            infoAll = "";
            // No 0 商品编码1 商品名称2 帐套3 单位4 数量5 折前价6 价格7 备注8
            var obj = document.getElementsByName("shopId"); 
            for (var i = 0; i < obj.length; i++) {
                var id = obj[i].id.replace("shopId-", "");
                if ($.trim($("#shopId-" + id).val()) != "") {
                    infoAll += $("#idNo-" + id).val() + "&*&";
                    infoAll += $("#shopId-" + id).val() + "&*&" + $("#shopName-" + id).val() + "&*&";
                    infoAll += $("#zhangTao-" + id).val() + "&*&" + $("#unit-" + id).val() + "&*&" + $("#qty-" + id).val() + "&*&";
                    infoAll += $("#zheQianPrice-" + id).val() + "&*&" + $("#price-" + id).val() + "&*&" + $("#remarks-" + id).val() + "|*||";

                    try
                    {
                     if(parseFloat($("#avgCost-" + id).val()) > parseFloat($("#price-" + id).val())) {
                         zheKouInfo =zheKouInfo +$("#shopId-" + id).val()+ "小于成本价\n";
                     }
                    }catch(e){zheKouInfo ="折扣异常！";}
                     
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
            if ($("#txtShouHuoRen").val() == "") { err += "收货人必须输入！\n"; } 

            sumTag();

            // isNaN
            if (isNaN($("#qty-All").val())) { err += "数量合计类型异常"; }
            if (isNaN($("#priceAll-All").val())) { err += "金额合计类型异常"; }

            if (infoAll == "") { err += "无明细数据！\n"; }
            if (err != "") {
                alert(err); btnFlag = "0"; $("#btnSave").attr("disabled", false);
                return false;
            }



            //检测出库成本小于当前销售价提示
            if (zheKouInfo != "") {
                if (!confirm(zheKouInfo)) {
                    btnFlag = "0"; $("#btnSave").attr("disabled", false);
                    zheKouInfo = "";
                    return false;
                }
            }



            /*必填项验证 end*/ 
            if (isSelect == "123") { $("#txtFShangPinHTML").css("display", "none"); }
            $.post("storeOtherWeiXiuExec.aspx?d=" + new Date(), {
                type: "weiXiuOut",
                saleAfterGuid: "b0ab6079-4b8e-4975-bc65-5bab3874625e",  //售后唯一标识
                guid: $("#txtGuid").val(),    //当前维修出库单唯一标识
                txtShouHuoRen: $("#txtShouHuoRen").val(),
                txtStoreId: $("#ddlCangKu").val(),
                txtRemarks: $("#txtRemarks").val(),
                txtCheZhuName: $("#txtCheZhuName").val(),
                txtChePaiHao: $("#txtChePaiHao").val(),
                txtVin: $("#txtVin").val(),

                info: encodeURIComponent(infoAll)
            }, function (data) {
                if (data != "ok") {
                    alert(data); btnFlag = "0"; $("#btnSave").attr("disabled", false);
                } else {
                    //页面转向
                    alert('操作成功,即将进入维修单打印！');
                    printThis($("#txtGuid").val()); //调用打印模块
                    parWinClose(); //关闭当前窗体

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