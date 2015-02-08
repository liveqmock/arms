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
<table border="0" style="width: 900px">
			<!--按钮区域 sart-->
			<tr>
					<td align="right">
						<!--按钮区域 start-->
						<s:if test="gongDan.txtGongDanStatus=='维修接待'">
							<s:if test="gongDan.txtBillNo!='等待生成'">
								<a
									onClick="updateGongDanStatus('<s:property value='saleAfterWeiXiuGuid' />','工单制作');return false;"
									class="easyui-linkbutton" href="javascript:void(0)">制作工单</a>
							</s:if>
							<a onClick="saveGongDan();return false;"
								class="easyui-linkbutton"
								href="javascript:void(0)">保存</a>
						</s:if><a onClick="winClose();return false;"
						class="easyui-linkbutton" href="javascript:void(0)">关闭</a> <!--按钮区域 end-->
					</td>
				</tr>
			<!--按钮区域 end-->
		</table>
	<form name="form1" method="post" id="form1">
		<input name="txtGongDanId" type="hidden" id="txtGongDanId" />
		<input name="txtVehicleId" type="hidden" id="txtVehicleId" />
		<div style="margin-left: 5px; margin-top: 5px;">
			<table border="0" cellpadding="0" cellspacing="0" width="900px">
				
				<tr>
					<td>车辆信息</td>
					<td colspan="7"></td>
				</tr>
				<tr>
				  <td width="90" align="right">车牌号：</td>
					<td><div id="txtChePaiHao"></div></td>
					<td width="90" align="right">品牌：</td>
					<td><div id="txtChangJiaPinPai"></div></td>
					<td width="90" align="right">车系名称：</td>
					<td><div id="txtCheXiName"></div></td>
					<td width="90" align="right">车型代码：</td>
					<td><div id="txtCheXingDaiMa"></div></td>
				</tr>
				<tr>
					<td align="right">VIN：</td>
					<td><div id="txtVin"></div></td>
					<td align="right">发动机号：</td>
					<td><div id="txtFaDongJiHao"></div></td>
                    <td align="right">服务顾问：</td>
					<td><div id="txtFuWuGuWen"></div></td>
					<td align="right">&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>车主信息</td>
					<td colspan="7"></td>
				</tr>
				<tr>
					<td align="right">客户类别：</td>
					<td><div id="txtCustSort"></div></td>
					<td align="right">会员等级：</td>
					<td><div id="txtHuiYuanDengJi"></div></td>
					<td align="right">工时折扣：</td>
					<td><div id="txtGongShiZheKou"></div></td>
					<td align="right">材料折扣：</td>
					<td><div id="txtCaiLiaoZheKou"></div></td>
				</tr>
				<tr>
					<td align="right">车主名：</td>
					<td><div id="txtCheZhuName"></div></td>
					<td align="right">车主电话：</td>
					<td><div id="txtCheZhuTel"></div></td>
                     <td align="right">联系人：</td>
					<td><div id="txtLianXiRenName"></div></td>
					<td align="right">联系人电话：</td>
					<td><div id="txtLianXiRenTel"></div></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>联系地址：</td>
					<td colspan="7"><div id="txtLianXiRenAdd"></div></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td colspan="7"></td>
				</tr>
				<tr>
					<td>维修信息</td>
					<td colspan="7"></td>
				</tr>
				<tr>
					<td align="right"><span class="requireSpan">*</span>维修单号：</td>
					<td><input name="txtBillNo" class="easyui-textbox" type="text"
						data-options="editable:false" id="txtBillNo" /></td>
					<td align="right"><span class="requireSpan">*</span>维修类别：</td>
					<td><input name="ddlWeiXiuSort" id="ddlWeiXiuSort"
							class="easyui-combobox"
							data-options="editable:false,required:true,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/weiXiuSortOption.action'" /></td>
					<td align="right"><span class="requireSpan">*</span>入厂时间：</td>
					<td><input name="txtRuChangDate" type="text"
						id="txtRuChangDate" class="easyui-datebox"
						data-options="required:true"
						style="width: 145px;" /></td>
					<td align="right"><span class="requireSpan">*</span>预出厂时间：</td>
					<td><input name="txtYuChuChangDate" type="text"
						id="txtYuChuChangDate" class="easyui-datetimebox"
						data-options="required:true"
						style="width: 145px;" /></td>
				</tr>
				<tr>
                    <td align="right"><span class="requireSpan">*</span>里程：</td>
					<td><input name="txtLiCheng" type="text" id="txtLiCheng"
						class="easyui-numberbox"
						data-options="required:true,min:0,validType:'maxLength[10]'" /></td>
					<td align="right"><span class="requireSpan">*</span>油量：</td>
					<td><input name="txtYouLiang" type="text" id="txtYouLiang"
						class="easyui-numberbox"
						data-options="required:true,precision:2,min:0,validType:'maxLength[10]'" />
					</td>
					<td align="right"><span class="requireSpan">*</span>下次保养里程：</td>
					<td><input type="text" id="txtNewLiCheng" name="txtNewLiCheng"
						class="easyui-numberbox"
						data-options="required:true,min:0,validType:'maxLength[10]'" /></td>
					<td align="right"><span class="requireSpan">*</span>下次保养日期：</td>
					<td><input type="text" id="txtNewRuChangDate"
						name="txtNewRuChangDate" class="easyui-datebox"
						data-options="required:true" /></td>
				</tr>
				<tr>
					<td align="right">协议单号：</td>
					<td><input class="easyui-textbox"
						data-options="validType:'maxLength[20]'"
						name="txtXieYiBillNo" type="text" id="txtXieYiBillNo" /></td>
					<td align="right">&nbsp;</td>
					<td>&nbsp;</td>
					<td align="right">&nbsp;</td>
					<td>&nbsp;</td>
					<td align="right">&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td align="right">维修提示：</td>
					<td colspan="7"><input class="easyui-textbox"
						name="txtTiShiInfo" type="text"
						data-options="validType:'maxLength[300]'" id="txtTiShiInfo"
						style="width: 836px" /></td>
				</tr>
			</table>
			<table border="0" cellpadding="0" cellspacing="0" width="900px">
				<tr>
					<td>交修原因：</td>
					<td>故障原因：</td>
					<td>维修措施：</td>
			  </tr>

				<tr>
				  <td align="center"><textarea name="txtJiaoXiuReason" rows="2" cols="20"
							id="txtJiaoXiuReason" style="height: 70px; width: 90%;"></textarea>
					</td>
				  <td align="center"><textarea name="txtGuZhangReason" rows="2" cols="20"
							id="txtGuZhangReason" style="height: 70px; width: 90%;"></textarea>
					</td>
				  <td align="center"><textarea name="txtWeiXiuCuoShi" rows="2" cols="20"
							id="txtWeiXiuCuoShi" style="height: 70px; width: 90%;"></textarea>
					</td>
				</tr>

				<tr>
					<td colspan="3" style="height: 2px;"></td>
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

		function saveGongDan() {
			$("#form1").form('submit', {
				url : "saveWeiXiuJieDai.action",
				success : function(result) {
					var result = eval('(' + result + ')');
					if (result.statusCode == "success") {
						$.messager.alert('提示','保存维修接待信息成功！','info',function(){
							var idInfo = eval('(' + result.info + ')');
							refreshGongDan(idInfo.gongDanId);
						});
					} else if (result.statusCode == "failed") {
						$.messager.alert('提示','保存维修接待信息失败！');
					}
				}
			});
		}


		 function refreshGongDan(gongDanId) {
			 parent.window.location.href = 'saleAfterIndex.action?saleAfterWeiXiuGuid=' + gongDanId + '&d=' + new Date();
	
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

		});
	</script>

</body>
</html>