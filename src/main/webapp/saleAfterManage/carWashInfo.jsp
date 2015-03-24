<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>洗车接待</title>
<link rel="stylesheet" type="text/css"
	href="../style/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="../style/themes/icon.css" />
<script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script>
<script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script>
<script src="../js/frame/locale/easyui-lang-zh_CN.js"
	type="text/javascript"></script>
<script src="../js/frame/underscore-min.js" type="text/javascript"></script>
<script src="../js/common.js" type="text/javascript"></script>
<script src="../js/customcommon.js" type="text/javascript"></script>
<link href="../style/common.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="../image/SyAuto_<s:property value='shop.companyFlag' />.ico" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=8" />
<style type="text/css">
td {
	height: 25px;
}
</style>
</head>
<body>
  <form name="fm" method="post" id="fm">
				<input name="txtGuid" type="hidden" id="txtGuid" />
			<table border="0" cellpadding="0" cellspacing="0" >
                <tr>
                    <td colspan="2" style="height:70px;">&nbsp;&nbsp;&nbsp;&nbsp;当前状态：<span id="txtStatus" style="color: Blue; font-weight: bold;"></span></td>
                    <td colspan="4" align="right">
                    <s:if test="carWashStatus=='洗车接待'">
                    <a onclick="saveItem()" class="easyui-linkbutton" href="javascript:void(0)">保存洗车信息</a>
                    <a onclick="updateStatus('派工')" class="easyui-linkbutton" href="javascript:void(0)">派工</a>
                    </s:if>
                    <s:if test="carWashStatus=='派工'">
                    <a onclick="updateStatus('洗车接待')" class="easyui-linkbutton" href="javascript:void(0)">退回上一步</a>
                    <a onclick="updateStatus('完检')" class="easyui-linkbutton" href="javascript:void(0)">完检</a>
                    </s:if>
                    <s:if test="carWashStatus=='完检'">
                    <a onclick="updateStatus('派工')" class="easyui-linkbutton" href="javascript:void(0)">退回上一步</a>
                    <a onclick="updateStatus('费用结算')" class="easyui-linkbutton" href="javascript:void(0)">费用结算</a>
                    </s:if>
                    <s:if test="carWashStatus=='费用结算'">
                    <a onclick="updateStatus('完检')" class="easyui-linkbutton" href="javascript:void(0)">退回上一步</a>
                    <a onclick="updateStatus('交车')" class="easyui-linkbutton" href="javascript:void(0)">交车</a>
                    </s:if>
                    <a class="easyui-linkbutton" href="javascript:winClose()">关闭窗口</a>
                    </td>
       			 </tr>
				<tr>
					<td width="100" align="right">车牌号：</td>
					<td width="150"><input name="txtChePaiHao" type="text" maxlength="15"
						id="txtChePaiHao" class="easyui-textbox"
						data-options="required:true" /></td>
					<td width="100" align="right">联系人：</td>
					<td width="150"><input name="txtCheZhuName" type="text" maxlength="15"
						id="txtCheZhuName" class="easyui-textbox"
						data-options="required:false" /></td>
					<td width="100" align="right">联系电话：</td>
					<td width="150"><input name="txtCheZhuTel" type="text" maxlength="15"
						id="txtCheZhuTel" class="easyui-textbox"
						data-options="required:false" /></td>
				</tr>
				<tr>
					<td align="right">车辆品牌：</td>
					<td><input name="ddlCheLiangPingPai" id="ddlCheLiangPingPai" class="easyui-combobox"
								data-options="editable:true,required:true,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/cheLiangPingPaiOption.action',onSelect:updateCheXi" /></td>
					<td align="right">车型：</td>
					<td><input name="ddlCheLiangCheXi" id="ddlCheLiangCheXi"
								class="easyui-combobox"
								data-options="editable:true,required:true,valueField:'code',textField:'name'" /></td>
					<td align="right">&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td align="right">洗车类型：</td>
					<td><input name="ddlXiCheLeiXing" type="text" maxlength="15"
						id="ddlXiCheLeiXing" class="easyui-textbox"
						data-options="required:true" /></td>
					<td align="right">费用：</td>
					<td><input name="txtFeiYong" type="text" maxlength="15"
						id="txtFeiYong" class="easyui-numberbox"
						data-options="required:true,precision:2,min:0" /></td>
					<td align="right">&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
                <s:if test="carWashStatus=='派工'">
				<tr>
					<td align="right">维修班组：</td>
					<td><input name="txtBanZu" id="txtBanZu" class="easyui-combobox"
								data-options="editable:true,required:true,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/weiXiuBanZuOption.action',onSelect:updateZhuXiuRen" /></td>
					<td align="right">主修人：</td>
					<td><input name="txtZhuXiuRen" id="txtZhuXiuRen" class="easyui-textbox"
								data-options="editable:true" /></td>
					<td align="right">&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
                </s:if>
                <s:if test="carWashStatus=='费用结算'">
				<tr>
					<td align="right">支付方式：</td>
					<td><input name="ddlZhiFuFangShi" id="ddlZhiFuFangShi" class="easyui-combobox" data-options="editable:false,required:true,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/zhiFuSortOption.action'" /></td>
					<td align="right">&nbsp;</td>
					<td>&nbsp;</td>
					<td align="right">&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
                </s:if>
			</table>
	  </form>

<script type="text/javascript">	
		var carWashGuid = '<s:property value="carWashGuid" />';
		
		$(function() {
			var formJson = eval('(' + '<s:property value="jsonData" escape="false"/>' + ')');
			initializeWithJsonData(formJson);
			
			
			var editFileds = [];
			<s:if test="carWashStatus=='洗车接待'">
			editFileds = ["txtChePaiHao","txtCheZhuName","txtCheZhuTel","ddlCheLiangPingPai","ddlCheLiangCheXi","ddlXiCheLeiXing","txtFeiYong"];			
			</s:if>
			<s:if test="carWashStatus=='派工'">
			editFileds = ["txtBanZu","txtZhuXiuRen"];
			</s:if>
			<s:if test="carWashStatus=='完检'">
			
			</s:if>
			<s:if test="carWashStatus=='费用结算'">
			editFileds = ["ddlZhiFuFangShi"];
			</s:if>
			
			_.each(formJson, function(value, key) {
				var el = $("#" + key);
				if(_.indexOf(editFileds,key)==-1 && _.size(el) > 0){
					if ((el[0].tagName == "INPUT" || el[0].tagName == "TEXTAREA") && el.attr("type")!="hidden") {
						$(el).parent().html(value);
					}
				}
			});
		});
		
		function saveItem() {
			var url;
			<s:if test="carWashGuid==null || carWashGuid==''">url = 'insertCarWash.action';</s:if>
			<s:else>url = 'updateCarWash.action';</s:else>
			$('#fm').form('submit', {
				url : url,
				onSubmit : function() {
					return $(this).form('validate');
				},
				success : function(result) {
					var result = eval('(' + result + ')');
					if (result.errorMsg) {
						$.messager.alert('出错啦', result.errorMsg);
					} else {
						<s:if test="carWashGuid==null || carWashGuid==''">
							location.href = "carWashInfo.action?carWashGuid=" + result.txtGuid + "&d=" + new Date();;
						</s:if>
						<s:else>
							reloadCurentPage();
						</s:else>
						
					}
				}
			});
		}
		
		function updateCheXi(brandItem){		
			$.post('<s:property value="basePath" />/data/cheLiangCheXiOption.action', {
				'cheLiangBrandName' : brandItem.name
			}, function(data) {
				$('#ddlCheLiangCheXi').combobox("loadData", data);
			}, 'json');
		}
		
		function updateZhuXiuRen(newBanZu){
			$.post('queryZhuXiuRen.action', {
				"weiXiuBanZu" : newBanZu
			}, function(result) {
				$("#txtZhuXiuRen").val(result.info);
			}, 'json');
		}
		
		function updateStatus(newStatus){
			$.messager.confirm('提示', '确定要<span  style="color: blue; font-weight: bold;">['+newStatus+']</span>吗?', function(r) {
				if (r) {
					$.post('updateCarWashStatus.action', {
						"txtGuid" : carWashGuid,
						"txtStatus" : newStatus
					}, function(result) {
						if (result.errorMsg) {
							$.messager.alert('出错啦', result.errorMsg);
						} else {
							reloadCurentPage();
						}
					}, 'json');
				}
			});			
		}

		function winClose() {
			window.opener = null;
			window.close();
		}
	</script>
</body>
</html>