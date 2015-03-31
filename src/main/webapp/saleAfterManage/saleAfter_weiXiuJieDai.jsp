<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title></title>
<link rel="stylesheet" type="text/css"
	href="../style/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="../style/themes/icon.css" />
<script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script>
<script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script>
<script src="../js/frame/locale/easyui-lang-zh_CN.js"
	type="text/javascript"></script>
<script src="../js/common.js" type="text/javascript"></script>
<script src="../js/frame/underscore-min.js" type="text/javascript"></script>
<script src="../js/customcommon.js" type="text/javascript"></script>
<link href="../style/common.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="../image/SyAuto_<s:property value='shop.companyFlag' />.ico" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=8" />
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
<meta HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<meta HTTP-EQUIV="Expires" CONTENT="0">
<style type="text/css">
td {
	height: 24px;
}
</style>
</head>

<body
	<s:if test="flag=='GrayBGColor'">style="background-color:#DDD;"</s:if>>
	<div style="margin-top: 5px; margin-left: 5px; margin-right: 5px;">
		<table border="0" style="width: 1100px">
			<!--按钮区域 sart-->
			<tr>
				<td align="right"><s:if
						test="gongDanStatus=='维修接待' && actionName=='gongDanWeiXiuJieDai'">
						<a onClick="saveGongDan();return false;" class="easyui-linkbutton"
							href="javascript:void(0)">保存接待信息</a>
						<s:if test="saleAfterWeiXiuGuid != null">
							<a
								onClick="updateGongDanStatus('<s:property value='saleAfterWeiXiuGuid' />','维修派工');return false;"
								class="easyui-linkbutton" href="javascript:void(0)">维修派工</a>
							<a
								onClick="updateGongDanStatus('<s:property value='saleAfterWeiXiuGuid' />','费用结算');return false;"
								class="easyui-linkbutton" href="javascript:void(0)">费用结算</a>
						</s:if>
					</s:if> <s:if
						test="gongDanStatus=='维修派工' && actionName=='gongDanWeiXiuPaiGong'">
						<a
							onClick="revertGongDanStatus('<s:property value='saleAfterWeiXiuGuid' />');return false;"
							class="easyui-linkbutton" href="javascript:void(0)">退回上一步</a>
						<a
							onClick="gongDanPaiGongToNext('领取物料');return false;"
							class="easyui-linkbutton" href="javascript:void(0)">领取物料</a>
						<a
							onClick="gongDanPaiGongToNext('维修完检');return false;"
							class="easyui-linkbutton" href="javascript:void(0)">维修完检</a>
					</s:if> <s:elseif
						test="gongDanStatus=='领取物料' && actionName=='gongDanLingQuWuLiao'">
						<a
							onClick="revertGongDanStatus('<s:property value='saleAfterWeiXiuGuid' />');return false;"
							class="easyui-linkbutton" href="javascript:void(0)">退回上一步</a>
						<a
							onClick="lingQuWuLiaoToNext('维修完检');return false;"
							class="easyui-linkbutton" href="javascript:void(0)">维修完检</a>
					</s:elseif> <s:elseif
						test="gongDanStatus=='维修完检' && actionName=='gongDanWeiXiuWanJian'">
						<a
							onClick="revertGongDanStatus('<s:property value='saleAfterWeiXiuGuid' />');return false;"
							class="easyui-linkbutton" href="javascript:void(0)">退回上一步</a>
						<a
							onClick="confirmAllWanJian('<s:property value='saleAfterWeiXiuGuid' />');return false;"
							class="easyui-linkbutton" href="javascript:void(0)">报修项目全部完检</a>
						<a onClick="setAllJianCheNormal();return false;"
							class="easyui-linkbutton" href="javascript:void(0)">检测项目全部正常</a>
						<a onClick="saveJianCheInfo();return false;"
							class="easyui-linkbutton" href="javascript:void(0)">保存检测项目信息</a>
						<a
							onClick="weiXiuWanJianToNext('费用结算');return false;"
							class="easyui-linkbutton" href="javascript:void(0)">费用结算</a>
					</s:elseif> <s:elseif
						test="gongDanStatus=='费用结算' && actionName=='gongDanWeiXiuJieSuan'">
						<a
							onClick="revertGongDanStatus('<s:property value='saleAfterWeiXiuGuid' />');return false;"
							class="easyui-linkbutton" href="javascript:void(0)">退回上一步</a>
						<a onClick="saveZhiFuXinXi();return false;"
							class="easyui-linkbutton" href="javascript:void(0)">保存支付信息</a>
						<s:if test="gongDan.ddlZhiFuFangShi != null">
							<a onClick="javascript:weiXiuJieSuanPrint();"
								class="easyui-linkbutton" href="javascript:void(0)">结算单信息</a>
						</s:if>
						<s:if test="gongDan.ddlZhiFuFangShi != null">
							<a
								onClick="updateGongDanStatus('<s:property value='saleAfterWeiXiuGuid' />','交车');return false;"
								class="easyui-linkbutton" href="javascript:void(0)">交车</a>
						</s:if>
					</s:elseif></td>
			</tr>
			<!--按钮区域 end-->
		</table>
		<s:if test="actionName=='gongDanWeiXiuJieDai'">
			<form name="form1" method="post" id="form1">
				<input name="txtGongDanId" type="hidden" id="txtGongDanId" /> <input
					name="txtCheLiangId" type="hidden" id="txtCheLiangId" />
				<div style="margin-left: 5px; margin-top: 5px;">
					<table border="0" cellpadding="0" cellspacing="0">

						<tr>
							<td>车辆信息</td>
							<td colspan="7">&nbsp;</td>
						</tr>
						<tr>
							<td width="100" align="right">车牌号：</td>
							<td><div id="txtChePaiHao"></div></td>
							<td width="100" align="right">车辆型号：</td>
							<td><div id="txtCheXingDaiMa"></div></td>
							<td width="100" align="right">车架号：</td>
							<td><div id="txtVin"></div></td>
							<td align="right">发动机号：</td>
							<td><div id="txtFaDongJiHao"></div></td>
						</tr>
						<tr style="border-bottom: thin dotted #000;">
							<td align="right">注册登记日：</td>
							<td><div id="txtCheLiangDengJiRiQi"></div></td>
							<td align="right">年审到期日：</td>
							<td><div id="txtCheLiangNianShenDaoQiRi"></div></td>
							<td align="right">保险到期日：</td>
							<td><div id="txtCheLiangBaoXianDaoQiRi"></div></td>
							<td align="right">承保公司：</td>
							<td><div id="ddlChengBaoGongSi"></div></td>
						</tr>
						<tr>
							<td colspan="8" height="5">&nbsp;</td>
						</tr>
						<tr>
							<td>车主信息</td>
							<td colspan="7">&nbsp;</td>
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
						</tr>
						<tr>
							<td align="right">客户类别：</td>
							<td><div id="txtCustSort"></div></td>
							<td align="right">联系地址：</td>
							<td colspan="5"><div id="txtLianXiRenAdd"></div></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td colspan="7">&nbsp;</td>
						</tr>
						<tr>
							<td>会员信息</td>
							<td colspan="7"></td>
						</tr>
						<tr>
							<td align="right">会员等级：</td>
							<td><div id="txtHuiYuanDengJi"></div></td>
							<td align="right">工时折扣：</td>
							<td><div id="txtGongShiZheKou"></div></td>
							<td align="right">物料折扣：</td>
							<td><div id="txtCaiLiaoZheKou"></div></td>
							<td align="right">&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td colspan="7">&nbsp;</td>
						</tr>
						<tr>
							<td>维修信息</td>
							<td colspan="7">&nbsp;</td>
						</tr>
						<tr>
							<td class="input" align="right">维修单号：</td>
							<td><input name="txtBillNo" class="easyui-textbox"
								type="text" data-options="editable:false" id="txtBillNo" /></td>
							<td align="right"><span class="requireSpan">*</span>行驶里程：</td>
							<td><input name="txtLiCheng" type="text" id="txtLiCheng"
								class="easyui-numberbox"
								data-options="required:true,min:0,validType:'maxLength[10]',onChange:function(newValue){$('#txtNewLiCheng').textbox('setValue', parseInt(newValue)+5000);}" /></td>
							<td align="right">协议单号：</td>
							<td><input class="easyui-textbox"
								data-options="validType:'maxLength[20]'" name="txtXieYiBillNo"
								type="text" id="txtXieYiBillNo" /></td>
							<td align="right">服务顾问：</td>
							<td><div id="txtFuWuGuWen"></div></td>
						</tr>
						<tr>
							<td class="input" align="right"><span class="requireSpan">*</span>入厂时间：</td>
							<td><input name="txtRuChangDate" type="text"
								id="txtRuChangDate" class="easyui-datetimebox"
								data-options="required:true" /></td>
							<td align="right"><span class="requireSpan">*</span>预出厂时间：</td>
							<td><input name="txtYuChuChangDate" type="text"
								id="txtYuChuChangDate" class="easyui-datetimebox"
								data-options="required:true" /></td>
							<td align="right"><span class="requireSpan">*</span>下次保养里程：</td>
							<td><input type="text" id="txtNewLiCheng"
								name="txtNewLiCheng" class="easyui-numberbox"
								data-options="required:true,min:0,validType:'maxLength[10]'" /></td>
							<td align="right"><span class="requireSpan">*</span>下次保养日期：</td>
							<td><input type="text" id="txtNewRuChangDate"
								name="txtNewRuChangDate" class="easyui-datebox"
								data-options="required:true" /></td>
						</tr>
						<tr>
							<td colspan="8">备注：</td>
						</tr>
						<tr>
							<td colspan="8"><textarea name="txtJiaoXiuReason" rows="2"
									cols="20" id="txtJiaoXiuReason"
									style="height: 70px; width: 100%;"></textarea></td>
						</tr>

						<tr>
							<td colspan="3" style="height: 2px;"></td>
						</tr>

					</table>
				</div>
			</form>
		</s:if>
		<s:if test="saleAfterWeiXiuGuid != null">
			<table id="datagridXiangMu" class="easyui-datagrid"
				data-options="url:'queryGongDanWeiXiuXiangMu.action?saleAfterWeiXiuGuid=<s:property value='saleAfterWeiXiuGuid' />',toolbar:'#tb',singleSelect:true,rownumbers:true,showFooter:true">
				<thead>
					<tr>
						<th width="80" height="24" field="txtGongDuanName"
							<s:if test="actionName=='gongDanWeiXiuJieDai'">
data-options="editor:{type:'combobox',options:{editable:false,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/weiXiuGongDuanOption.action'}}"</s:if>>工段</th>
					  <th field="txtXiangMuName" width="150">项目名称</th>
						<th field="txtWeiXiuNeiRong" width="200"
							<s:if test="actionName in {'gongDanWeiXiuJieDai', 'gongDanCheLiangJianCe'}">
						data-options="editor:{type:'textbox'}"</s:if>>项目内容</th>
						<th field="txtFeiYong" width="80"
							<s:if test="actionName in {'gongDanWeiXiuJieDai', 'gongDanCheLiangJianCe'}">
						data-options="align:'right',editor:{type:'numberbox',options:{precision:2,required:true}}"</s:if>>工时费</th>
						<th field="ddlZhangTao" width="100"
							<s:if test="actionName in {'gongDanWeiXiuJieDai', 'gongDanCheLiangJianCe'}">
						data-options="editor:{type:'combobox',options:{editable:false,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/zhangTaoOption.action'}}"</s:if>>帐套</th>
						<th field="txtRemark" width="150"
							data-options="editor:{type:'textbox'}">备注</th>
						<s:if
							test="actionName=='gongDanWeiXiuPaiGong' || actionName=='gongDanLingQuWuLiao' || actionName=='gongDanWeiXiuWanJian' || actionName=='gongDanWeiXiuJieSuan'">
							<th field="txtBanZu" width="150"
								data-options="editor:{type:'combobox',options:{editable:false,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/weiXiuBanZuOption.action'}}">维修班组</th>
						</s:if>
						<s:if test="actionName=='gongDanWeiXiuJieSuan'">
							<th field="txtWanJianRen" width="80">完检人</th>
						</s:if>
						<s:if
							test="(actionName=='gongDanWeiXiuPaiGong' || actionName=='gongDanWeiXiuWanJian') && (gongDanStatus=='维修完检' || gongDanStatus=='返修')">
							<th field="txtWanJianStatus" width="250"
								formatter="formatWanJianStatus">完检状态</th>
						</s:if>
						<s:if
							test="(gongDanStatus=='维修接待' && actionName=='gongDanWeiXiuJieDai') || (gongDanStatus=='车辆检测' && actionName=='gongDanCheLiangJianCe') || (gongDanStatus=='维修派工' && actionName=='gongDanWeiXiuPaiGong') || (gongDanStatus=='维修完检' && actionName=='gongDanWeiXiuWanJian')">
							<th field="action" width="180" align="center"
								formatter="formatAction">操作</th>
						</s:if>
					</tr>
				</thead>
			</table>
			<s:if
				test="(gongDanStatus=='维修接待' && actionName=='gongDanWeiXiuJieDai') || (gongDanStatus=='维修派工' && actionName=='gongDanWeiXiuPaiGong')">
				<div id="tb" style="height: auto">
					<a href="javascript:void(0)" class="easyui-linkbutton"
						data-options="iconCls:'icon-add',plain:true"
						onClick="addItemList()">添加维修项目</a>
				</div>
			</s:if>
			<div style="height: 10px;"></div>
		</s:if>
		<s:if test="actionName=='gongDanWeiXiuWanJian'">
			<table id="datagridJianCe" class="easyui-datagrid"
				data-options="url:'queryGongDanCheLiangJianCe.action?saleAfterWeiXiuGuid=<s:property value='saleAfterWeiXiuGuid' />',singleSelect:true,rownumbers:true,showFooter:true<s:if test="gongDanStatus=='维修完检' && actionName=='gongDanWeiXiuWanJian'">,onLoadSuccess:beginEditAllRows</s:if>">
				<thead>
					<tr>
						<th field="txtNeiRong" width="200">检测内容</th>
						<th field="txtZhuangTai" width="200"
							data-options="align:'center',editor:{type:'radiobox',options:{defaultValue:'未检测',values:['未检测','正常','异常']}}">检测状态</th>
						<th field="txtRemark" width="250"
							data-options="editor:{type:'textbox'}">备注</th>
						<th field="txtJianChaXiangMuRemark" width="950">检查项目说明</th>
					</tr>
				</thead>
			</table>
			<div style="height: 10px;"></div>
		</s:if>
		<s:if
			test="actionName in {'gongDanLingQuWuLiao', 'gongDanWeiXiuJieSuan'}">
			<table id="datagridWuLiao" class="easyui-datagrid"
				data-options="url:'queryGongDanWeiXiuWuLiao.action?saleAfterWeiXiuGuid=<s:property value='saleAfterWeiXiuGuid' />',toolbar:'#tb2',singleSelect:true,rownumbers:true,showFooter:true">
				<thead>
					<tr>
						<th field="txtWuLiaoCode" width="150">物料编号</th>
						<th field="txtWuLiaoName" width="250">名称及规格</th>
						<th field="txtQty" width="60"
							data-options="align:'right'">数量</th>
						<th field="txtSalePrice" width="80">销售价</th>
						<th field="ddlSuoSuGongDuan" width="150"
							data-options="editor:{type:'combobox',options:{editable:false,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/weiXiuGongDuanOption.action'}}">所属工段</th>
						<th field="ddlZhangTao" width="100"
							data-options="editor:{type:'combobox',options:{editable:false,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/zhangTaoOption.action'}}">帐套</th>
						<th field="txtRemark" width="100"
							data-options="editor:{type:'textbox'}">备注</th>
						<s:if
							test="(gongDanStatus=='领取物料' && actionName=='gongDanLingQuWuLiao')">
							<th field="action" width="180" align="center"
								formatter="formatAction2">操作</th>
						</s:if>
					</tr>
				</thead>
			</table>
		</s:if>
		<s:if
			test="gongDanStatus=='领取物料' && actionName=='gongDanLingQuWuLiao'">
			<div id="tb2" style="height: auto">
				<a href="javascript:void(0)" class="easyui-linkbutton"
					data-options="iconCls:'icon-add',plain:true"
					onClick="addWulaoFromKuCun()">添加库存物料</a>
			</div>
		</s:if>
		<s:if test="actionName=='gongDanWeiXiuJieSuan'">
			<div
				style="width: 100%; background-color: white; margin-top: 10px; border: solid 1px #95b8e7;">
				<table border="1" id="jieSuanList"
					style="border-collapse: collapse; border: 1px solid #ddd;"
					cellpadding="5">
					<tr>
						<td colspan="5">会员等级：<span
							style="font-weight: bold; padding-right: 10px;"><s:property
									value='gongDan.txtHuiYuanDengJi' /></span>工时折扣:<span
							style="font-weight: bold; padding-right: 10px;"><s:property
									value='gongDan.txtGongShiZheKou' /></span>物料折扣:<span
							style="font-weight: bold;"><s:property
									value='gongDan.txtCaiLiaoZheKou' /></span></td>

					</tr>
					<s:if test="customerTaoKaItemLst.size > 0">
						<tr>
							<td colspan="5">
								<table>
									<thead>
										<tr>
											<th width="100" align="left">套卡类型</th>
											<th width="100" align="left">业务名称</th>
											<th width="80" align="center">服务次数</th>
											<th width="80" align="center">剩余次数</th>
                                            <s:if test="gongDanStatus=='费用结算'">
											<th width="80" align="center">操作</th>
                                            </s:if>
										</tr>
									</thead>
									<tbody>
										<s:iterator value="customerTaoKaItemLst" status="status">
											<tr>
												<td align="left"><s:property value="txtTaoKaSort" /></td>
												<td align="left"><s:property value="txtXiangMuName" /></td>
												<td align="center"><s:property value="txtTotalTimes" /></td>
												<td align="center"><s:property value="txtRestTimes" /></td>
                                                
                                            <s:if test="gongDanStatus=='费用结算'">
												<td align="center"><s:if test="txtRestTimes > 0">
														<a
															href="javascript:modifyRestTimes('<s:property value='txtXiangMuName' />', '<s:property value='txtGuid' />', '<s:property value='txtRestTimes' />')">套卡支付</a>&nbsp;</s:if></td>
                                            </s:if>
											</tr>
										</s:iterator>
									</tbody>
								</table>
							</td>
						</tr>
					</s:if>
					<tr>
						<td width="100" style="font-weight: bold;">帐套</td>
						<td width="100" style="font-weight: bold;">工时费（折前）</td>
						<td width="100" style="font-weight: bold;">工时费（折后）</td>
						<td width="100" style="font-weight: bold;">物料费（折前）</td>
						<td width="100" style="font-weight: bold;">物料费（折后）</td>
					</tr>
					<s:iterator value="jieSuanInfo.jieSuanLst">
						<tr>
							<td>&nbsp;<s:property value="zhangtao" />&nbsp;
							</td>
							<td align="right">&nbsp;<s:property
									value="gongshiFeiZheQian" />&nbsp;
							</td>
							<td align="right">&nbsp;<s:property value="gongshiFeiZheHou" />&nbsp;
							</td>
							<td align="right">&nbsp;<s:property value="wuLiaoFeiZheQian" />&nbsp;
							</td>
							<td align="right">&nbsp;<s:property value="wuLiaoFeiZheHou" />&nbsp;
							</td>
						</tr>
					</s:iterator>
					<tr>
						<td>&nbsp;合计&nbsp;</td>
						<td align="right">&nbsp;<s:property
								value="jieSuanInfo.gongshiFeiZheQianHeJi" />&nbsp;
						</td>
						<td align="right">&nbsp;<s:property
								value="jieSuanInfo.gongshiFeiZheHouHeJi" />&nbsp;
						</td>
						<td align="right">&nbsp;<s:property
								value="jieSuanInfo.wuLiaoFeiZheQianHeJi" />&nbsp;
						</td>
						<td align="right">&nbsp;<s:property
								value="jieSuanInfo.wuLiaoFeiZheHouHeJi" />&nbsp;
						</td>
					</tr>
					<tr>
						<td colspan="5">合计(客户支付)：<span>&nbsp;<s:property
									value="jieSuanInfo.gongDanHeJi" />
						</span>&nbsp;&nbsp;&nbsp;&nbsp; 实付金额：&nbsp;<span><input
								class="easyui-numberbox" name="txtFinalPay" type="text"
								id="txtFinalPay" data-options="required:true,precision:2,min:0"
								style="width: 80px;" /></span>&nbsp;&nbsp;&nbsp;&nbsp; 支付方式：&nbsp;<span><input
								name="ddlZhiFuFangShi" id="ddlZhiFuFangShi"
								class="easyui-combobox"
								data-options="editable:false,required:true,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/zhiFuSortOption.action'"
								style="width: 100px;" /></span></td>
					</tr>
				</table>
			</div>
		</s:if>
	</div>


	<script language="javascript" type="text/javascript">
		var saleAfterGuid = '<s:property value="saleAfterWeiXiuGuid" />';
		
		$(function() {
			var jsonData = eval('('
					+ '<s:property value="gongDanJsonData" escape="false"/>' + ')');
			initializeWithJsonData(jsonData);
			
			var idsAllAry = [];
			_.each(jsonData, function(value, key) {
				idsAllAry.push(key);
			});
			var idsJieSuanAry = ['ddlZhiFuFangShi', 'txtFinalPay'];
			var idsJieDaiAry = _.difference(idsAllAry, idsJieSuanAry);
						
			<s:if test="gongDanStatus != '维修接待'">
			makeElementsReadonly(idsJieDaiAry, jsonData);
			</s:if>	
			<s:if test="gongDanStatus != '费用结算'">
			makeElementsReadonly(idsJieSuanAry, jsonData);
			</s:if>
		});

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

		function saveGongDan() {
			var vin = "<s:property value='gongDan.txtVin' />";
			if(vin.trim().length == 0){
				$.messager.alert('提示','车架号不能为空，请补全客户车辆信息！','info', function(){
					var url = '../customManage/customerInfo.action?customerId=<s:property value="gongDan.txtCustId" />&d=' + new Date();
					var sFeatures = "dialogWidth:970px;dialogHeight:700px;center:yes;help:no;resizable:no;scroll:yes;status:no;";
					window.showModalDialog(url, window, sFeatures);
					
					reloadCurentPage();
				});
				return;	
			}
			
			$("#form1").form('submit', {
				url : "saveWeiXiuJieDaiInfo.action",
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
		
		var myTable = $('#datagridXiangMu');
		function addItemList() {
			var sURL = "../webSetup/weiXiuXiangMuManage.action?action=pickXiangMu&saleAfterGuid="
					+ saleAfterGuid + "&d=" + new Date();
			var sFeatures = "dialogWidth:1000px;dialogHeight:900px;center:yes;help:no;resizable:no;scroll:yes;status:no;";
			window.showModalDialog(sURL, window, sFeatures);
			myTable.datagrid('reload');
		}

		function formatAction(value, row, index) {
			if (row.txtGongDuanName == "合计") {
				return "";
			} else {
				<s:if test="actionName in {'gongDanWeiXiuJieDai','gongDanCheLiangJianCe','gongDanWeiXiuPaiGong'}">
				if (row.editing) {
					var s = '<a href="#" onclick="saverow(this);return false;">保存修改</a>&nbsp;&nbsp;&nbsp;&nbsp;';
					var c = '<a href="#" onclick="cancelrow(this);return false;">取消修改</a>';
					return s + c;
				} else {
					var e = '<a href="#" onclick="editrow(this);return false;">编辑本行</a>&nbsp;&nbsp;&nbsp;&nbsp;';
					var d = '<a href="#" onclick="deleterow(this);return false;">删除本行</a>';
					return e + d;
				}
				</s:if>
				<s:elseif test="actionName=='gongDanWeiXiuWanJian'">
					if (row.txtWanJianStatus == "完检") {
						return '';
					}else{
						var s = '<a href="#" onclick="updateWanJianStatus(this,\'完检\');return false;">完检</a>&nbsp;&nbsp;&nbsp;&nbsp;';
						var c = '<a href="#" onclick="updateWanJianStatus(this,\'返修\');return false;">返修</a>';
						return s + c;
					}
				</s:elseif>
			}
		}
		
		function formatWanJianStatus(value, row, index){
			if (row.txtWanJianStatus == "完检"
					|| row.txtWanJianStatus == "返修") {
				return row.txtWanJianStatus + " " + row.txtWanJianRen + " "
						+ row.txtWanJianShiJian;
			} else {
				return "";	
			}
		}
		

		function getTargetRowIndex(target) {
			return myTable.datagrid('getEventTargetRowIndex', target);
		}

		function editrow(target) {
			if (myTable.datagrid('hasEditingRow')) {
				$.messager.alert('提示', '请先处理尚未完成的编辑行信息');
			} else {
				myTable.datagrid('beginEdit', getTargetRowIndex(target));
			}
		}

		function deleterow(target) {
			if (myTable.datagrid('hasEditingRow')) {
				$.messager.alert('提示', '请先处理尚未完成的编辑行信息');
			} else {
				$.messager.confirm('提示', '确定要删除本行信息吗?', function(r) {
					if (r) {
						var rowIndex = getTargetRowIndex(target);
						var editRow = myTable.datagrid('getRows')[rowIndex];
						$.post('deleteGongDanWeiXiuXiangMu.action', {
							"txtWeiXiuXiangMuId" : editRow.txtWeiXiuXiangMuId
						}, function(result) {
							if (result.errorMsg) {
								$.messager.alert('出错啦', result.errorMsg);
								myTable.datagrid('cancelEdit', rowIndex);
							} else {
								myTable.datagrid('reload');
							}
						}, 'json');
					}
				});
			}
		}

		function saverow(target) {
			var rowIndex = getTargetRowIndex(target);
			if (myTable.datagrid('validateRow', rowIndex)) {
				myTable.datagrid('endEdit', rowIndex);
				var editRow = myTable.datagrid('getRows')[rowIndex];
				var url = "";
				<s:if test="actionName in {'gongDanWeiXiuJieDai', 'gongDanCheLiangJianCe'}">
				url = "updateGongDanWeiXiuXiangMuWhenJieDai.action";
				</s:if>;
				<s:elseif test="actionName=='gongDanWeiXiuPaiGong'">
				url = "updateGongDanWeiXiuXiangMuWhenPaiGong.action";
				</s:elseif>
				$.post(url, {
					"easyUiJSonData" : JsonToString(editRow)
				}, function(result) {
					if (result.errorMsg) {
						$.messager.alert('出错啦', result.errorMsg);
						myTable.datagrid('cancelEdit', rowIndex);
					} else {
						myTable.datagrid('reload');
					}
				}, 'json');
			} else {
				$.messager.alert('提示', '请先按照提示填写行信息');
			}
		}

		function cancelrow(target) {
			myTable.datagrid('cancelEdit', getTargetRowIndex(target));
		}

		function renBaoPrint(){			
				var url = '../saleAfterManage/shiGongDanPrint.action?saleAfterWeiXiuGuid='
						+ saleAfterGuid + '&d=' + new Date();
				var name = '施工单打印';
				var features = 'height=1000, width=730, top=80, left=80, toolbar=no, menubar=no, scrollbars=yes, resizable=yes,location=no, status=no';
				
				z = window.open(url, name, features);
				z.focus();
		}
		function weiXiuJieSuanPrint(){			
			var url = '../saleAfterManage/weiXiuJieSuan.action?saleAfterWeiXiuGuid='
					+ saleAfterGuid + '&d=' + new Date();
			var name = '结算单信息打印';
			var features = 'height=900, width=730, top=80, left=80, toolbar=no, menubar=no, scrollbars=yes, resizable=yes,location=no, status=no';
				z = window.open(url, name, features);
				z.focus();
		}
		function gongDanPaiGongToNext(nextStatus){
			var rows = myTable.datagrid('getRows');
			var isSomeWeiXiuZuEmpty = _.some(_.pluck(rows, 'txtBanZu'), function(name){return name=='';});
			if(isSomeWeiXiuZuEmpty){
				$.messager.alert('提示', '维修组信息不能为空');
			}else{
				updateGongDanStatus('<s:property value='saleAfterWeiXiuGuid' />', nextStatus);
			}
		}
		function weiXiuWanJianToNext(nextStatus){
			var rows_xiangMu = myTable.datagrid('getRows');
			var isSomeWanJianStatusEmpty = _.some(_.pluck(rows_xiangMu, 'txtWanJianStatus'), function(name){return name=='';});
			if(isSomeWanJianStatusEmpty){
				$.messager.alert('提示', '完检状态信息不能为空');
				return;
			}		
			
			//检测项目判断
			saveJianCheInfo(function(){
				var rows_jianCe = myTable3.datagrid('getRows');
				var isSomeAbnormalJianCeRemarkEmpty = _.some(rows_jianCe, function(row){return row.txtZhuangTai == '异常' ? $.trim(row.txtRemark)=='' : false;});
				if(isSomeAbnormalJianCeRemarkEmpty){
					$.messager.alert('提示', '检测异常项目的备注信息不能为空');
					beginEditAllRows();
					return;
				}
				
				//符合条件才能进入下一步
				updateGongDanStatus('<s:property value='saleAfterWeiXiuGuid' />', nextStatus);
			});			
		}
		
		//-------------------------Datagrid2------------------------------------
		var myTable2 = $('#datagridWuLiao');

		function addWulaoFromKuCun() {
			var sURL = "<s:property value='basePath' />/storeOtherManage/kuCunManage.action?action=addWuLiao&saleAfterWeiXiuGuid="
					+ saleAfterGuid + "&d=" + new Date();
			var sFeatures = "dialogWidth:1100px;dialogHeight:900px;center:yes;help:no;resizable:no;scroll:yes;status:no;";
			window.showModalDialog(sURL, window, sFeatures);
			myTable2.datagrid('reload');
		}
		
		function addWulaoFromCaiGou() {
			var sURL = "<s:property value='basePath' />/storeOtherManage/storeOtherInsertBillManage.action?action=addWuLiao&saleAfterWeiXiuGuid="
					+ saleAfterGuid + "&d=" + new Date();
			var sFeatures = "dialogWidth:1000px;dialogHeight:700px;center:yes;help:no;resizable:no;scroll:yes;status:no;";
			window.showModalDialog(sURL, window, sFeatures);
			myTable2.datagrid('reload');
		}		

		function formatAction2(value, row, index) {
			if (row.txtWuLiaoCode == "合计") {
				return "";
			} else {
					if (row.editing) {
						var s = '<a href="#" onclick="saverow2(this);return false;">保存修改</a>&nbsp;&nbsp;&nbsp;&nbsp;';
						var c = '<a href="#" onclick="cancelrow2(this);return false;">取消修改</a>';
						return s + c;
					} else {
						var e = '<a href="#" onclick="editrow2(this);return false;">编辑本行</a>&nbsp;&nbsp;&nbsp;&nbsp;';
						var d = '<a href="#" onclick="wuLiaoWithdraw(this);return false;">物料退库</a>';
						return e + d;
					}
			}
		}

		function getTargetRowIndex2(target) {
			return myTable2.datagrid('getEventTargetRowIndex', target);
		}

		function editrow2(target) {
			if (myTable2.datagrid('hasEditingRow')) {
				$.messager.alert('提示', '请先处理尚未完成的编辑行信息');
			} else {
				myTable2.datagrid('beginEdit', getTargetRowIndex2(target));
			}
		}

		function wuLiaoWithdraw(target) {
			if (myTable2.datagrid('hasEditingRow')) {
				$.messager.alert('提示', '请先处理尚未完成的编辑行信息');
			} else {
				$.messager.confirm('提示', '确定要将选中物料退库吗?', function(r) {
					if (r) {
						var rowIndex = getTargetRowIndex2(target);
						var editRow = myTable2.datagrid('getRows')[rowIndex];
						$.post('withdrawGongDanWeiXiuWuLiao.action', {
							"txtWeiXiuWuLiaoId" : editRow.txtWuLiaoGuid
						}, function(result) {
							if (result.errorMsg) {
								$.messager.alert('出错啦', result.errorMsg);
								myTable2.datagrid('cancelEdit', rowIndex);
							} else {
								myTable2.datagrid('reload');
							}
						}, 'json');
					}
				});
			}
		}

		function saverow2(target) {
			var rowIndex = getTargetRowIndex2(target);
			if (myTable2.datagrid('validateRow', rowIndex)) {
				myTable2.datagrid('endEdit', rowIndex);
				var editRow = myTable2.datagrid('getRows')[rowIndex];
				$.post('updateGongDanWeiXiuWuLiaoWhenAddWuLiao.action', {
					"easyUiJSonData" : JsonToString(editRow)
				}, function(result) {
					if (result.errorMsg) {
						$.messager.alert('出错啦', result.errorMsg);
						myTable2.datagrid('cancelEdit', rowIndex);
					} else {
						myTable2.datagrid('reload');
					}
				}, 'json');
			} else {
				$.messager.alert('提示', '请先按照提示填写行信息');
			}
		}

		function cancelrow2(target) {
			myTable2.datagrid('cancelEdit', getTargetRowIndex2(target));
		}
		
		function confirmChuKu(target) {
			var rowIndex = getTargetRowIndex2(target);
			var editRow = myTable2.datagrid('getRows')[rowIndex];
			var msg = '<span  style="color: blue;">'+editRow.txtSuppName+'<br/>' +editRow.txtWuLiaoName+ ' 数量:' +editRow.txtQty+'</span>';
			$.messager.confirm('物料信息', msg, function(r) {
				if (r) {
					$.post('updateGongDanWeiXiuWuLiaoWhenLingQuWuLiao.action', {
						"easyUiJSonData" : JsonToString(editRow)
					}, function(result) {
						if (result.errorMsg) {
							$.messager.alert('出错啦', result.errorMsg);
						} else {
							myTable2.datagrid('reload');
						}
					}, 'json');
				}
			});			
		}	
		
		function lingQuWuLiaoToNext(nextStatus){
			var rows = myTable2.datagrid('getRows');
			var isSomeGongDuanEmpty = _.some(_.pluck(rows, 'ddlSuoSuGongDuan'), function(name){return name=='';});
			if(isSomeGongDuanEmpty){
				$.messager.alert('提示', '所属工段信息不能为空');
			}else{
				updateGongDanStatus('<s:property value='saleAfterWeiXiuGuid' />', nextStatus);
			}
		}


		//-------------------------Datagrid3------------------------------------
		var myTable3 = $('#datagridJianCe');		
		
		function beginEditAllRows() {
			var rows = myTable3.datagrid('getRows');
			_.each(rows, function(row, rowIndex){
				myTable3.datagrid('beginEdit', rowIndex);
			});	
		}
		
		function endEditAllRows() {
			var rows = myTable3.datagrid('getRows');
			_.each(rows, function(row, rowIndex){
				myTable3.datagrid('endEdit', rowIndex);
			});	
		}

		function saveJianCheInfo(callBack) {
			endEditAllRows();
			
			var rows = myTable3.datagrid('getRows');
			var allZhuangTai = _.pluck(rows, "txtZhuangTai");
			if(_.some(allZhuangTai, function(value){return value=="未检测"})){
				$.messager.confirm('提示', "还有未检测的项目，确定要保存检测信息吗？", function(r) {
					if (r) {
						if(arguments.length == 1){
							doSaveJianCheInfo(rows, callBack);
						}else{
							doSaveJianCheInfo(rows);
						}
					}else{
						beginEditAllRows();
					}
				});	
			}else{
				if(arguments.length == 1){
					doSaveJianCheInfo(rows, callBack);
				}else{
					doSaveJianCheInfo(rows);
				}
			}
		}
		
		function doSaveJianCheInfo(rows, callBack){
			var isCallBackExist = (arguments.length == 2);
			$.post('updateGongDanCheLiangJianCe.action', {
				"easyUiJSonData" : JsonToString(rows)
			}, function(result) {
				if (result.errorMsg) {
					$.messager.alert('出错啦', result.errorMsg);
				} else {
					myTable3.datagrid('reload');
					if(isCallBackExist){
						callBack();
					}
				}
			}, 'json');			
		}
		
		function setAllJianCheNormal(){			
			var rows = myTable3.datagrid('getRows');
			_.each(rows, function(row, rowIndex){
				var zhuangTaiEditor = myTable3.datagrid('getEditor', { index: rowIndex, field: 'txtZhuangTai' });
				var radioGroup = $(zhuangTaiEditor.target).find(":radio[value='正常']");
				if(_.size(radioGroup)>0){
					$(radioGroup[0]).attr("checked","checked");
				}	
			});	
		}

		function cancelrow3(target) {
			myTable3.datagrid('cancelEdit', getTargetRowIndex3(target));
		}
		
		 //新增入库单
		function openRuKuDan(ruKuDanGuid, flag) {
			var sURL = '../storeOtherManage/rukudanDetail.action?ruKuDanGuid=' + ruKuDanGuid
					+ '&flag=' + flag + '&d=' + new Date();
			var sFeatures = "dialogWidth:1000px;dialogHeight:500px;center:yes;help:no;resizable:no;scroll:yes;status:no;";
			window.showModalDialog(sURL, window, sFeatures);
        }
		
		function saveZhiFuXinXi(){
			var ddlZhiFuFangShi = $("#ddlZhiFuFangShi").combobox("getValue");
			var txtFinalPay = $("#txtFinalPay").numberbox("getValue");
			if (ddlZhiFuFangShi=="" || txtFinalPay=="") {	
				$.messager.alert('提示', '请先按提示填写支付信息');
			} else {			
				$.post('updateGongDanZhiFuXinXi.action', {
					"saleAfterWeiXiuGuid" : saleAfterGuid,
					"ddlZhiFuFangShi" : ddlZhiFuFangShi,
					"txtFinalPay" : txtFinalPay
				}, function(result) {
					if (result.errorMsg) {
						$.messager.alert('出错啦', result.errorMsg);
					}else{
						$.messager.alert('提示', "支付方式保存成功",'info',function(){
							reloadCurentPage();
						});
					}
				}, 'json');
			}
		}	
	
		function modifyRestTimes(txtXiangMuName, txtGuid, txtRestTimes) {
			if (txtRestTimes >= 1) {
				$.messager.confirm('确认', '确定使用套卡项目<span  style="color: blue; font-weight: bold;">' + txtXiangMuName + '</span>的剩余次数支付吗?', function(r) {
					if (r) {
						$.post('../customManage/modifyRestTimes.action?flag=pay', {
							"customerTaoKaItemGuid" : txtGuid,
							"txtRestTimes" : txtRestTimes - 1
						}, function(result) {
							if (result.errorMsg) {
								$.messager.alert('出错啦', result.errorMsg);
							} else {
								$.messager.alert('提示', "套卡支付成功",'info',function(){
									reloadCurentPage();
								});
							}
						}, 'json');		
					}
				});
			}else {
				$.messager.alert('提示', '套卡项目剩余次数不足，请使用其他方式支付');
			}
		}
		
		function printThis() {
			window.open("saleAfter_WeiXiuJieDaiPrint.aspx?saleAfterGuid="
					+ saleAfterGuid + "&d=" + new Date());
			return false;
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
	</script>

</body>
</html>