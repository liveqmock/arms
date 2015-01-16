<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head><title>
	维修接待
</title>
    <style type="text/css">
  td
  {
  	font-size:12px;
  	height:25px;
  	white-space:nowrap;
  	}
</style>

 <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=17a48e594e374bee9428a515058eb666" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=17a48e594e374bee9428a515058eb666" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/underscore-min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=17a48e594e374bee9428a515058eb666" type="text/javascript"></script><link href="../style/common.css?v=17a48e594e374bee9428a515058eb666" rel="stylesheet" type="text/css" /><script src="../js/customcommon.js" type="text/javascript"></script><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>

<script language="javascript" type="text/javascript" >
  
  //注册回车键

</script>

<body>
    <form name="form1" method="post" id="form1">
        <input name="txtGongDanId" type="hidden" id="txtGongDanId" />
        <input name="txtCustId" type="hidden" id="txtCustId" />
        <input name="txtVehicleId" type="hidden" id="txtVehicleId" />
        <input name="txtGongDanStatus" type="hidden" id="txtGongDanStatus" />
    <div style="margin-left:5px;margin-top:5px;">        
       <table border="0"   cellpadding="0" cellspacing="0" width="900px" >
        <tr>
        <td>车辆信息</td>
        <td colspan="7"></td>
        </tr>
        <tr>
        <td  style="width:94px;">车牌号:</td>
        <td style="width:150px;">
        <input name="txtChePaiHao" type="text" maxlength="10" id="txtChePaiHao" /> </td>
        <td  style="width:90px;"><span class="requireSpan">*</span>里程:</td>
        <td><input name="txtLiCheng" type="text" maxlength="10" id="txtLiCheng" class="easyui-numberbox" /> </td>
        <td  style="width:90px;"><span class="requireSpan">*</span>油量:</td>
        <td><input name="txtYouLiang" type="text" maxlength="4" id="txtYouLiang" class="easyui-numberbox" data-options="min:0,max:1,precision:2" /> </td>
        <td  style="width:90px;">购车日期:</td>
        <td><input name="txtGouCheDate" type="text" maxlength="10" id="txtGouCheDate" class="easyui-datebox" style="width:136px;" /> </td>
        </tr>
         <tr>
        <td>VIN:</td>
        <td><input name="txtVin" type="text" maxlength="17" id="txtVin" /> </td>
        <td>发动机号:</td>
        <td><input name="txtFaDongJiHao" type="text" maxlength="18" id="txtFaDongJiHao" /> </td>
        <td>厂家品牌:</td>
        <td><input name="txtChangJiaPinPai" type="text" maxlength="10" id="txtChangJiaPinPai" /> </td>
        <td>车系名称:</td>
        <td><input name="txtCheXiName" type="text" maxlength="10" id="txtCheXiName" /> </td>
        </tr>
         <tr>
        <td>颜色:</td>
        <td><input name="txtChenShenYanSe" type="text" maxlength="10" id="txtChenShenYanSe" /> </td>
        <td>AT/MT:</td>
        <td><input name="txtAT" type="text" maxlength="2" id="txtAT" /> </td>
        <td>车型代码:</td>
        <td><input name="txtCheXingDaiMa" type="text" maxlength="20" id="txtCheXingDaiMa" /> </td>
        <td>客户类别:</td>
        <td><input name="txtCustSort" type="text" maxlength="30" id="txtCustSort" /> </td>
        </tr>

        <tr>
        <td>车主信息</td>
        <td colspan="7"></td>
        </tr>
        <tr>
        <td>车主名:</td>
        <td><input name="txtCheZhuName" type="text" maxlength="50" id="txtCheZhuName" /> </td>
        <td>车主电话:</td>
        <td><input name="txtCheZhuTel" type="text" maxlength="20" id="txtCheZhuTel" /> </td>
        <td>车主手机:</td>
        <td><input name="txtCheZhuMob" type="text" maxlength="11" id="txtCheZhuMob" /> </td>
        <td>会员等级:</td>
        <td><input name="txtHuiYuanDengJi" type="text" maxlength="10" readonly id="txtHuiYuanDengJi" /></td>
        </tr>
         <tr>
        <td>联系人:</td>
        <td><input name="txtLianXiRenName" type="text" maxlength="20" id="txtLianXiRenName" /> </td>
        <td>联系人电话:</td>
        <td><input name="txtLianXiRenTel" type="text" maxlength="20" id="txtLianXiRenTel" /> </td>
        <td>联系人手机:</td>
        <td><input name="txtLianXiRenMob" type="text" maxlength="11" id="txtLianXiRenMob" /> </td>
        <td>会员卡号:</td>
        <td><input name="txtHuiYuanHao" type="text" maxlength="10" readonly id="txtHuiYuanHao" /></td>
        </tr> 

        <tr>
        <td>联系地址:</td>
        <td colspan="7">
        <input name="txtLianXiRenAdd" type="text" maxlength="100" id="txtLianXiRenAdd" style="width:829px;" />
        </td>
        </tr>



        <tr>
        <td>维修信息</td>
        <td colspan="7"></td> 
        </tr>
        <tr>
        <td>维修单号:</td>
        <td><input name="txtBillNo" type="text" readonly id="txtBillNo" /> </td>
        <td><span class="requireSpan">*</span>协议单号:</td>
        <td><input name="txtXieYiBillNo" type="text" maxlength="12" id="txtXieYiBillNo" /> </td>
        <td><span class="requireSpan">*</span>入厂时间:</td>
        <td><input name="txtRuChangDate" type="text" id="txtRuChangDate" /> </td>
        <td><span class="requireSpan">*</span>预出厂时间:</td>
        <td><input name="txtYuChuChangDate" type="text" id="txtYuChuChangDate" class="easyui-datetimebox" style="width:136px;" /> </td>
        </tr> 
        <tr>
        <td>服务顾问:</td>
        <td><input name="txtFuWuUserId" type="text" maxlength="10" id="txtFuWuUserId" /> </td>
        <td><span class="requireSpan">*</span>维修类别:</td>
        <td>
        <select name="ddlWeiXiuSort" id="ddlWeiXiuSort" style="width:138px;">
	<option value="一般维修">一般维修</option>
	<option value="年审">年审</option>
	<option value="首保">首保</option>
	<option value="定保">定保</option>
	<option value="大客户">大客户</option>
	<option value="厂家保修">厂家保修</option>
	<option value="保险">保险</option>
	<option value="新车检查">新车检查</option>
	<option value="免检">免检</option>
	<option value="返修">返修</option>
	<option value=""></option>

</select>
        </td>
        <td colspan="4"><!--保险相关信息-->
        <input id="chkShouBao" type="checkbox" name="chkShouBao" /><label for="chkShouBao">首保</label>
        <input id="chkMianJian" type="checkbox" name="chkMianJian" /><label for="chkMianJian">免检</label> 
        <input id="chkXinCheJianCha" type="checkbox" name="chkXinCheJianCha" /><label for="chkXinCheJianCha">新车检查</label>
        <input id="chkFanXiu" type="checkbox" name="chkFanXiu" /><label for="chkFanXiu">返修</label>
        <input id="chkBaoXian" type="checkbox" name="chkBaoXian" onClick="baoXianShow();" /><label for="chkBaoXian">保险</label>
        <span id="spanShiFouMaiDan"  style="visibility:hidden">
        <input id="chkShiFouMaiDan" type="checkbox" name="chkShiFouMaiDan" /><label for="chkShiFouMaiDan">是否买单</label>
        </span> 
        </td>
        </tr>

        <!--保险信息 start-->
        <tr id="spanBaoXian" style="visibility:hidden">
        <td>档案号:</td>
        <td><input name="txtBaoXianDangAnHao" type="text" maxlength="20" id="txtBaoXianDangAnHao" /></td>
        <td>本店保单:</td>
        <td>
        <table id="radBaoXianIsBenDian" border="0">
	<tr>
		<td><input id="radBaoXianIsBenDian_0" type="radio" name="radBaoXianIsBenDian" value="是" /><label for="radBaoXianIsBenDian_0">是</label></td><td><input id="radBaoXianIsBenDian_1" type="radio" name="radBaoXianIsBenDian" value="否" /><label for="radBaoXianIsBenDian_1">否</label></td>
	</tr>
</table></td>
        <td>出险日期:</td>
        <td><input name="txtBaoXianDate" type="text" id="txtBaoXianDate" class="easyui-datebox" style="width:136px;" /></td>
        <td>理赔公司:</td>
        <td>
        <select name="ddlBaoXianLiPeiComp" id="ddlBaoXianLiPeiComp" style="width:138px;">
	<option value="平安财险">平安财险</option>
	<option value="人保财险">人保财险</option>
	<option value="人寿财险">人寿财险</option>
	<option value="太平财险">太平财险</option>
	<option value="华安财险">华安财险</option>
	<option value="大地财险">大地财险</option>
	<option value="天安财险">天安财险</option>
	<option value="其他财险">其他财险</option>
	<option value="天平财险">天平财险</option>
	<option value="太平洋财险">太平洋财险</option>
	<option selected="selected" value=""></option>

</select>
        </td>
        </tr>
        <!--保险信息 end-->

        <tr>
        <td>提示信息</td>
        </tr>
        <tr>
        <td>维修提示:</td>
        <td colspan="7">
        <input name="txtTiShiInfo" type="text" maxlength="300" id="txtTiShiInfo" style="width:829px" />
        </td>
       </tr>  
       </table>
       <table border="0" cellpadding="0" cellspacing="0"  width="900px">
         <tr>
         <td>交修原因:</td>
         <td>故障原因:</td>
         <td>维修措施</td>
         </tr>

         <tr>
         <td>
         <textarea name="txtJiaoXiuReason" rows="2" cols="20" id="txtJiaoXiuReason" style="height:70px;width:270px;"></textarea>
         </td>
         <td>
         <textarea name="txtGuZhangReason" rows="2" cols="20" id="txtGuZhangReason" style="height:70px;width:270px;"></textarea>
         </td>
         <td>
         <textarea name="txtWeiXiuCuoShi" rows="2" cols="20" id="txtWeiXiuCuoShi" style="height:70px;width:270px;"></textarea>
         </td>
         </tr>

         <tr>
         <td colspan="3" style="height:2px;" ></td>
         </tr>
         <tr>
         <td colspan="3" align="center">
          <!--按钮区域 start--> 
           <a onClick="return saveCheck();" id="lnkSave" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSave','')">保存</a>
           
           <a onClick="return winClose();" id="lnkCancel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkCancel','')">关闭</a>
           
          <!--按钮区域 end-->
         </td>
         </tr>

       </table>



    </div>
</form>

    <script language="javascript" type="text/javascript" >

		$(function() {
			var formJson = eval('(' + '<s:property value="jsonData" escape="false"/>' + ')');
			initFormData(formJson);
		});

		function __doPostBack(eventTarget, eventArgument) {
			if(eventTarget=='lnkSave'){
				$("#form1").form('submit', {
					url : "saveWeiXiuJieDai.action",
					success : function(result) {
						var result = eval('(' + result + ')');
						if (result.statusCode == "success") {
							alert('保存维修接待信息成功！');
							var idInfo = eval('(' + result.info + ')');
							parent.refreshPage(idInfo.gongDanId);
						} else if (result.statusCode == "failed") {
							alert('保存维修接待信息失败！');
						}
					}
				});				
			}
		}

        //发送数据至VIP
        function sendVip() {
            $.get("../customManage/DCHVIPInterface.aspx?d=" + new Date(),
             { type: "W", thisGuid: "d4e10073-1054-4c86-b552-f44623513d0b" }, function (data) {
                 alert(data); 
             });

            return false;
        }


        function saveCheck() {
            var err = "";
            //保存前验证
           
           //必填项验证
            if ($("#txtLiCheng").val() == "") {err += "里程不能为空！\n";}
            if ($("#txtYouLiang").val() == "") { err += "油量不能为空！\n"; }
            if ($("#txtXieYiBillNo").val() == "") { err += "协议单号不能为空！\n"; }
            if ($("#ddlWeiXiuSort").val() == "") { err += "维修类型不能为空！\n"; }
            if ($("#txtRuChangDate").val() == "") { err += "入厂时间不能为空！\n"; }
            if ($("#txtYuChuChangDate").datebox("getValue") == "") { err += "预出厂时间不能为空！\n"; }
            
            if (err != "") {
                alert(err);
                return false;
            }else{
                return true;
            }

        }



        function baoXianShow() {
            //保险模块是否显示
            var obj = $("#chkBaoXian").attr("checked");
            if (obj != undefined) {
                $("#spanShiFouMaiDan").css("visibility", "visible");
                $("#spanBaoXian").css("visibility", "visible");
            } else {
                $("#spanShiFouMaiDan").css("visibility", "hidden");
                $("#spanBaoXian").css("visibility", "hidden");
            }

        }


        function winClose() {
            if (!confirm("您确定要退出？")) {
                return false;
            }
            try {
                parent.parent.parWinClose();
            } catch (e) {
                parent.window.opener = null;
                parent.window.close();
            }
            return false;
        }



        var tmp = '#FFFFFF';
        $(function () {
            $('tr').mouseover(function () {
                tmp = this.style.backgroundColor;
                this.style.backgroundColor = '#eaf2ff';
            });

            $('tr').mouseout(function () {
                this.style.backgroundColor = tmp;
            });

            baoXianShow(); // 初始化保险的显示状态

         
        });



        function printThis() {
            window.open("saleAfter_WeiXiuJieDaiPrint.aspx?saleAfterGuid=d4e10073-1054-4c86-b552-f44623513d0b&d=" + new Date());
           
            return false;
        }


    </script>

</body>
</html>