<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>维修接待</title>
<style type="text/css">
td {
	font-size: 12px;
	height: 25px;
	white-space: nowrap;
}
</style>

<link rel="stylesheet" type="text/css"
	href="../style/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="../style/themes/icon.css" />
<script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script>
<script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script>
<script src="../js/frame/underscore-min.js" type="text/javascript"></script>
<script src="../js/frame/locale/easyui-lang-zh_CN.js"
	type="text/javascript"></script>
<script src="../js/common.js" type="text/javascript"></script>
<link href="../style/common.css" rel="stylesheet" type="text/css" />
<script src="../js/customcommon.js" type="text/javascript"></script>
<link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=8" />
</head>

<body>
	<form name="form1" method="post" id="form1">
		<input name="txtGongDanId" type="hidden" id="txtGongDanId" /> <input
			name="txtCustId" type="hidden" id="txtCustId" /> <input
			name="txtVehicleId" type="hidden" id="txtVehicleId" /> <input
			name="txtGongDanStatus" type="hidden" id="txtGongDanStatus" />
		<div style="margin-left: 5px; margin-top: 5px;">
			<table border="0" cellpadding="0" cellspacing="0" width="900px">
				<tr>
					<td>车辆信息</td>
					<td colspan="7"></td>
				</tr>
				<tr>
					<td width="90" align="right">车牌号:</td>
					<td><input class="easyui-textbox"
						data-options="required:true,validType:'maxLength[10]'"
						name="txtChePaiHao" type="text" id="txtChePaiHao" /></td>
					<td width="90" align="right">品牌:</td>
					<td><input class="easyui-textbox" name="txtChangJiaPinPai"
						type="text" data-options="validType:'maxLength[20]'"
						id="txtChangJiaPinPai" /></td>
					<td width="90" align="right">车系名称:</td>
					<td><input class="easyui-textbox" name="txtCheXiName"
						type="text" data-options="validType:'maxLength[20]'"
						id="txtCheXiName" /></td>
					<td width="90" align="right">车型代码:</td>
					<td><input class="easyui-textbox" name="txtCheXingDaiMa"
						type="text" data-options="validType:'maxLength[20]'"
						id="txtCheXingDaiMa" /></td>
				</tr>
				<tr>
					<td align="right">VIN:</td>
					<td><input name="txtVin" type="text" class="easyui-textbox"
						data-options="required:true" id="txtVin" /></td>
					<td align="right">发动机号:</td>
					<td><input name="txtFaDongJiHao" type="text"
						class="easyui-textbox" 
						id="txtFaDongJiHao" /></td>
                      <td align="right"><span class="requireSpan">*</span>里程:</td>
					<td><input name="txtLiCheng" type="text" id="txtLiCheng"
						class="easyui-numberbox"
						data-options="required:true,min:0,validType:'maxLength[10]'" /></td>
					<td align="right"><span class="requireSpan">*</span>油量:</td>
					<td><input name="txtYouLiang" type="text" id="txtYouLiang"
						class="easyui-numberbox"
						data-options="required:true,precision:2,min:0,validType:'maxLength[10]'" />
					</td>
				</tr>
				<tr>
					<td>车主信息</td>
					<td colspan="7"></td>
				</tr>
				<tr>
					<td align="right">客户类别:</td>
					<td><input class="easyui-textbox" name="txtCustSort"
						type="text" data-options="validType:'maxLength[30]'"
						id="txtCustSort" /></td>
				</tr>
				<tr>
					<td align="right">车主名:</td>
					<td><input class="easyui-textbox"
						data-options="required:true"
						name="txtCheZhuName" type="text" id="txtCheZhuName" /></td>
					<td align="right">车主电话:</td>
					<td><input name="txtCheZhuTel" class="easyui-textbox"
						data-options="required:true"
						type="text" id="txtCheZhuTel" /></td>
                     <td align="right">联系人:</td>
					<td><input name="txtLianXiRenName" class="easyui-textbox"
						data-options="required:true"
						type="text" id="txtLianXiRenName" /></td>
					<td align="right">联系人电话:</td>
					<td><input name="txtLianXiRenTel" class="easyui-textbox"
						data-options="required:true"
						type="text" id="txtLianXiRenTel" /></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>联系地址:</td>
					<td colspan="7"><input class="easyui-textbox"
						name="txtLianXiRenAdd" type="text"
						data-options="validType:'maxLength[100]'" id="txtLianXiRenAdd"
						style="width: 833px;" /></td>
				</tr>
				<tr>
					<td>会员信息</td>
					<td colspan="7"></td>
				</tr>
				<tr>
					<td align="right">会员等级:</td>
					<td><input class="easyui-textbox" name="txtHuiYuanDengJi"
						type="text" data-options="editable:false" id="txtHuiYuanDengJi" /></td>
					<td align="right">工时折扣:</td>
					<td><input class="easyui-textbox" name="txtGongShiZheKou"
						type="text" data-options="editable:false" id="txtGongShiZheKou" /></td>
					<td align="right">材料折扣:</td>
					<td><input class="easyui-textbox" name="txtCaiLiaoZheKou"
						type="text" data-options="editable:false" id="txtCaiLiaoZheKou" /></td>
				</tr>
				<tr>
					<td>维修信息</td>
					<td colspan="7"></td>
				</tr>
				<tr>
					<td align="right">维修单号:</td>
					<td><input name="txtBillNo" class="easyui-textbox" type="text"
						readonly id="txtBillNo" /></td>
					<td align="right"><span class="requireSpan">*</span>维修类别:</td>
					<td><input name="ddlWeiXiuSort" id="ddlWeiXiuSort"
							class="easyui-combobox"
							data-options="editable:false,required:true,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/weiXiuSortOption.action'" /></td>
					<td align="right"><span class="requireSpan">*</span>入厂时间:</td>
					<td><input name="txtRuChangDate" type="text"
						id="txtRuChangDate" class="easyui-datebox"
						data-options="required:true"
						style="width: 145px;" /></td>
					<td align="right"><span class="requireSpan">*</span>预出厂时间:</td>
					<td><input name="txtYuChuChangDate" type="text"
						id="txtYuChuChangDate" class="easyui-datebox"
						data-options="required:true"
						style="width: 145px;" /></td>
				</tr>
				<tr>
					<td align="right"><span class="requireSpan">*</span>协议单号:</td>
					<td><input class="easyui-textbox"
						data-options="required:true,validType:'maxLength[20]'"
						name="txtXieYiBillNo" type="text" id="txtXieYiBillNo" /></td>
					<td align="right">服务顾问:</td>
					<td><input class="easyui-textbox" name="txtFuWuUserId"
						type="text" maxlength="10" id="txtFuWuUserId" /></td>
					<td align="right"><span class="requireSpan">*</span>下次保养里程:</td>
					<td><input type="text" id="txtNewLiCheng" name="txtNewLiCheng"
						class="easyui-numberbox"
						data-options="required:true,min:0,validType:'maxLength[10]'" /></td>
					<td align="right"><span class="requireSpan">*</span>下次保养日期:</td>
					<td><input type="text" id="txtNewRuChangDate"
						name="txtNewRuChangDate" class="easyui-datebox"
						data-options="required:true" /></td>
				</tr>
				<!--保险信息 end-->

				<tr>
					<td>提示信息</td>
				</tr>
				<tr>
					<td>维修提示:</td>
					<td colspan="7"><input class="easyui-textbox"
						name="txtTiShiInfo" type="text"
						data-options="validType:'maxLength[300]'" id="txtTiShiInfo"
						style="width: 836px" /></td>
				</tr>
			</table>
			<table border="0" cellpadding="0" cellspacing="0" width="900px">
				<tr>
					<td>交修原因:</td>
					<td>故障原因:</td>
					<td>维修措施</td>
				</tr>

				<tr>
					<td><textarea name="txtJiaoXiuReason" rows="2" cols="20"
							id="txtJiaoXiuReason" style="height: 70px; width: 270px;"></textarea>
					</td>
					<td><textarea name="txtGuZhangReason" rows="2" cols="20"
							id="txtGuZhangReason" style="height: 70px; width: 270px;"></textarea>
					</td>
					<td><textarea name="txtWeiXiuCuoShi" rows="2" cols="20"
							id="txtWeiXiuCuoShi" style="height: 70px; width: 270px;"></textarea>
					</td>
				</tr>

				<tr>
					<td colspan="3" style="height: 2px;"></td>
				</tr>
				<tr>
					<td colspan="3" align="center">
						<!--按钮区域 start-->
						<s:if test="gongDan.txtGongDanStatus=='维修接待'">
							<s:if test="gongDan.txtBillNo!='等待生成'">
								<a
									onClick="updateGongDanStatus('<s:property value='saleAfterWeiXiuGuid' />','工单制作');return false;"
									class="easyui-linkbutton" href="javascript:void(0)">制作工单</a>
							</s:if>
							<a onClick="return saveCheck();" id="lnkSave"
								class="easyui-linkbutton"
								href="javascript:__doPostBack('lnkSave','')">保存</a>
						</s:if><a onClick="winClose();return false;" id="lnkCancel"
						class="easyui-linkbutton" href="javascript:void(0)">关闭</a> <!--按钮区域 end-->
					</td>
				</tr>

			</table>



		</div>
	</form>

	<script language="javascript" type="text/javascript">
		$(function() {
			var formJson = eval('('
					+ '<s:property value="jsonData" escape="false"/>' + ')');
			initFormData(formJson);
		});

		function __doPostBack(eventTarget, eventArgument) {
			if (eventTarget == 'lnkSave') {
				$("#form1").form('submit', {
					url : "saveWeiXiuJieDai.action",
					success : function(result) {
						var result = eval('(' + result + ')');
						if (result.statusCode == "success") {
							$.messager.alert('提示','保存维修接待信息成功！','info',function(){
								var idInfo = eval('(' + result.info + ')');
								parent.refreshPage(idInfo.gongDanId);
							});
						} else if (result.statusCode == "failed") {
							$.messager.alert('提示','保存维修接待信息失败！');
						}
					}
				});
			}
		}

		//发送数据至VIP
		function sendVip() {
			$.get("../customManage/DCHVIPInterface.aspx?d=" + new Date(), {
				type : "W",
				thisGuid : "d4e10073-1054-4c86-b552-f44623513d0b"
			}, function(data) {
				$.messager.alert('提示',data);
			});

			return false;
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
			$.messager.confirm('提示', "您确定要退出？", function(r) {
				if (r) {
					try {
						parent.parent.parWinClose();
					} catch (e) {
						parent.window.opener = null;
						parent.window.close();
					}
				}
			});
		}

		var tmp = '#FFFFFF';
		$(function() {
			$('tr').mouseover(function() {
				tmp = this.style.backgroundColor;
				this.style.backgroundColor = '#eaf2ff';
			});

			$('tr').mouseout(function() {
				this.style.backgroundColor = tmp;
			});

			baoXianShow(); // 初始化保险的显示状态

		});

		function printThis() {
			window
					.open("saleAfter_WeiXiuJieDaiPrint.aspx?saleAfterGuid=d4e10073-1054-4c86-b552-f44623513d0b&d="
							+ new Date());

			return false;
		}
	</script>

</body>
</html>