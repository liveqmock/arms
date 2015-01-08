


<html>
<head><title>

</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="storeOtherJingPinOutBill.aspx?billNo=XSD201411054&amp;busiSort=xinChe&amp;ioFlag=1&amp;billGuid=5e993f43-74ee-4706-b2f5-adff4696b180&amp;d=Thu+Jan+08+2015+12%3a05%3a26+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMjYxMDI3NzU3ZGQ6at2940BNlEswuWl9aXSZRj6ogg==" />
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
     <table border="0" style="width:945px;border-bottom:1px solid #b8b8b8;"">
        <tr><td class="titlebg"><span>配件管理</span>(精品出库单)
         </td><td align="right">
           </td></tr>
         </table> 
      
       <table border="0"  style="width:945px;" >
         <tr>
         <td style="text-align:right;width:130px;">业务单号:</td>
         <td style="width:200px;"><input name="txtBillNo" type="text" value="等待生成中" id="txtBillNo" /></td>
         <td style="width:130px;">单据类型:</td>
         <td  style="width:200px;"><input name="txtChuKuSort" type="text" value="新车" id="txtChuKuSort" /> </td>
         <td  style="width:130px;">车架号:</td>
         <td  style="width:200px;">
         <input name="txtCheJiaHao" type="text" id="txtCheJiaHao" />
         </td>
         <td  style="width:130px;"><span class="requireSpan">*&nbsp;</span>所属仓库:</td>
         <td  style="width:230px;">
         <select name="ddlCangKu" id="ddlCangKu" style="width:100%;">
	<option value="6012A">九江丰田配件仓</option>
	<option selected="selected" value=""></option>

</select>
         </td>
         </tr>
         <tr>
         <td  style="text-align:right;">车主姓名:</td>
         <td><input name="txtCheZhuName" type="text" value="王建华" id="txtCheZhuName" /> </td>
         <td>车系:</td>
         <td><input name="txtCheXi" type="text" value="国产RAV4" id="txtCheXi" /></td>
         <td>车型:</td>
         <td><input name="txtCheXing" type="text" value="2.0L风尚版" id="txtCheXing" /></td>
         <td><span class="requireSpan">*&nbsp;</span>经手人:</td>
         <td><input name="txtJingShouRen" type="text" maxlength="10" id="txtJingShouRen" style="width:100%;" /></td>         
         </tr>
         <tr>
         <td  style="text-align:right;">单据备注:</td>
         <td colspan="7">
          <input name="txtRemarks" type="text" maxlength="100" id="txtRemarks" style="width:100%;" />
         </td>
         </tr>

         </table>

         <!--按钮区域 start-->
           <table border="0"  style="width:945px;background-color:#e4e4e4;" >
                <tr>  
                   <td>精品出库单明细</td>
                    <td align="right"> 
                     

                     <a onclick="return saveCheck();" id="lnkSave" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-save'" href="javascript:__doPostBack('lnkSave','')">保存</a>
                    </td>
                </tr>
            </table>

         <!--按钮区域 end-->

         <!--明细数据列表 start-->
         <table   width="945px" border="1" cellspacing="0" cellpadding="0"  
        style="word-break:break-all;border-collapse:collapse;border:1px solid gray;" > 
          
          
        
        </table>
         <!--明细数据列表 end-->

    
    </div>



    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="96A3D15B" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWDAKU1JnoCQLa9PCNDgLGjZSDBgL+8uS9DgKasfn9BwKOzeSDBAKqx+/iBwLWz/zOAgKW38iDBgKrlqPFBQKZvM/mBAKj7e2BCLgiExht+m5AnTr8rp2gmi1B3hzc" />
</div></form>

    <script language="javascript" type="text/javascript" >

        function chkChange(obj) {
            var c = obj.checked;
            $("input[name='jingPin']").each(function () {
                this.checked = c;
            });

            drawChange("");
        }


        //出库数调整事件 start
        function drawChange(id) {

            if ("1"=="1")
            {

                //1 验证出库数量 是否大于待出库数
                if (id != "") {               
                    var t1 = parseFloat($("#"+id+"Qty").val());
                    var t2 = parseFloat($("#" + id + "Name").val());
                    if (t1 > t2) { $("#" + id + "Qty").val(t2); }
                    $("#" + id).attr("checked",true)                
                }else
                {
                    var t1 = parseFloat($("#"+id+"Qty").val());
                    var t2 = parseFloat($("#" + id + "drawQty").val());
                    if (t1 > t2) { $("#" + id + "Qty").val(t2); }
                    $("#" + id).attr("checked",true)  
                }
            }
            //2 求和所有的待出库数
            var s = 0;
            $("input[name='jingPin']").each(function () {
                if (this.checked == true) {
                    var id = this.id;
                    s = s + parseFloat($("#" + id + "Qty").val());
                }
            });
             

            $("#qtyAll").html(s.toFixed(2));
        }

        //出库数调整事件 end

        //原厂精品出退库操作
        var btnFlag = "0";
        function saveCheck() {
            if (btnFlag == "0") { btnFlag = "1"; } else {return false;}

            var err = "";
            var s = "";//合计
            //检测必填项 是否填写
            if ($("#ddlCangKu").val() == "") { err += "所属仓库不能为空！\n"; }
            if ($("#txtJingShouRen").val() == "") { err += "经手人不能为空！\n"; }

            //检测明细数据 是否填写
            $("input[name='jingPin']").each(function () {
                if (this.checked == true) {
                    var id = this.id;
                    s = s + id + "," + $("#" + id + "ShopId").val() + "," + $("#" + id + "Qty").val() + "," + $("#" + id + "Notes").val() +"," + $("#" + id + "ChengBenJia").val() + "|";
                }
            });

            if (s == "") { err += "明细数据不能为空！\n"; }

            if (err != "") {alert(err);btnFlag = "0";return false;}

           
            //提交后台执行start
            $.post("storeOtherJingPinExec.aspx?d=" + new Date(), {
                type: "storeOtherJingPin",
                ioFlag:1,
                storeId:$("#ddlCangKu").val(),
                busiSort:"xinChe",
                sourceGuid:"5e993f43-74ee-4706-b2f5-adff4696b180",
                sourceBill:"XSD201411054",
                jingShouRen:$("#txtJingShouRen").val(),
                remarks:$("#txtRemarks").val(),
                cheZhuName:$("#txtCheZhuName").val(),
                cheJiaHao:$("#txtCheJiaHao").val(),
                s:s
            }, function (data) { 
               var t= data.split("|");
               if(t[0]=="1")
               {
                alert("精品出退库成功！,进入精品出退库打印！");
                location.href ="storeOtherJingPinPrint.aspx?thisGuid="+t[1]+"&d="+new Date();
               }else
               {
                btnFlag ="0";
                alert(t[0]);
               }

            });
            //提交后台执行end


            return false;
        }



    </script>
</body>
</html>