<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1"><title>
  维修历史详细明细查看
</title><link rel="Stylesheet" href="common/System.css" type="text/css" />
    <style type="text/css" >
    #tabHeJi td
    {
      text-align:center; 
      }
    </style>
    
    
    <script language="javascript" type="text/javascript">

        var changColorId = ""; //改变背景色id
        var changeColorColor = ""; //背景颜色
        function changeColor(obj) {
            changeColorColor = obj.style.backgroundColor;
            if (changColorId != "" && changColorId != null) { ; changColorId.style.backgroundColor = changeColorColor; }
            obj.style.backgroundColor = "#EEE3CB";
            changColorId = obj;
        }


        //上一条维修信息
        function parentClick() {
            location.href = "?saleAfterGuid=&sort=1&d="+new Date();
        }

        //下一条维修信息
        function nextClick() {
            location.href = "?saleAfterGuid=&sort=1&d="+new Date();
        }
    
    
    </script>
    
    
 <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=17a48e594e374bee9428a515058eb666" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=17a48e594e374bee9428a515058eb666" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=17a48e594e374bee9428a515058eb666" type="text/javascript"></script><link href="../style/common.css?v=17a48e594e374bee9428a515058eb666" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
     <fieldset >
     <legend>车辆信息</legend>
     <table border="0" width="98%">
     <tr >
      <td width="60" nowrap>维修单号:</td>
      <td nowrap><span id="labWeiXiuDanHao"><s:property value='gongDan.txtBillNo' /></span></td>
      <td width="60" nowrap>协议单号:</td>
      <td nowrap><span id="labXieYiDanHao"><s:property value='gongDan.txtXieYiBillNo' /></span></td>
      <td width="60" nowrap>车 主:</td>
      <td nowrap><span id="labCheZhu"><s:property value='gongDan.txtCheZhuName' /></span></td>
      <td width="60" nowrap>联系人:</td>
      <td nowrap><span id="labLianXi"><s:property value='gongDan.txtLianXiRenName' /></span></td>
      <td width="60" nowrap>联系电话:</td>
      <td nowrap><span id="labLianXiTel"><s:property value='gongDan.txtLianXiRenMob' /></span></td>
     </tr>
     <tr >
      <td nowrap>车型:</td>
      <td nowrap><span id="labChangJiaPinPai"><s:property value='gongDan.txtCheXiName' /></span></td>
      <td nowrap>里程:</td>
      <td nowrap><span id="labLiCheng"><s:property value='gongDan.txtLiCheng' /></span></td>
      <td nowrap>服务顾问:</td>
      <td nowrap><span id="labFuWuGuWen"><s:property value='gongDan.txtFuWuUserId' /></span></td>
      <td nowrap>入厂日期:</td>
      <td nowrap><span id="labRuChangRiQi"><s:property value='gongDan.txtRuChangDate' /></span></td>
      <td nowrap>出厂日期:</td>
      <td nowrap><span id="labChuChangRiQi"><s:property value='gongDan.txtChuChangDate' /></span></td>
     </tr>
     <tr>
     <td>车牌号:</td>
     <td><span id="labChePaiHaoMa"><s:property value='gongDan.txtChePaiHao' /></span> </td>
     <td>车架号码:</td>
     <td><span id="labCheJiaHaoMa"><s:property value='gongDan.txtVin' /></span> </td>
     </tr>
     </table>
     </fieldset>
     
     <!--维修明细-->
<fieldset>
        <legend>维修信息</legend>
        <table border="0" width="98%">
         <tr><td>交修原因</td><td>故障原因</td><td>维修措施</td><td>维修提示</td></tr>
         <tr>
         <td width="25%"><textarea name="jiaoXiu" id="jiaoXiu" cols="40" rows="5" style="width:100%;"><s:property value='gongDan.txtJiaoXiuReason' /></textarea></td>
         <td width="25%"><textarea name="guZhang" id="guZhang" cols="40" rows="5" style="width:100%;"><s:property value='gongDan.txtGuZhangReason' /></textarea></td>
         <td width="25%"><textarea name="weiXiu" id="weiXiu" cols="40" rows="5" style="width:100%;"><s:property value='gongDan.txtWeiXiuCuoShi' /></textarea></td>
         <td width="25%"><textarea name="beiZhu" id="beiZhu" cols="40" rows="5" style="width:100%;"><s:property value='gongDan.txtTiShiInfo' /></textarea></td>
         </tr>
        </table>

        <br />
        <table  border="1" cellspacing="1" cellpadding="0" style="border:1px solid gray;border-collapse:collapse;width:98%;font-size:9px;" >
        <!--存放详细维修信息-->
        <tr class="Tablehead" height="23px">
        <td nowrap align="center">&nbsp;工段名称</td>
        <td nowrap align="center">&nbsp;维修内容</td>
        <td nowrap align="center">&nbsp;工时费</td>
        <td nowrap align="center">&nbsp;帐套</td>        
        <td nowrap align="center">&nbsp;维修班组</td>
        <td nowrap align="center">&nbsp;主修人</td>
        <td nowrap align="center">&nbsp;完检人</td>
        </tr> 

        <s:iterator value="gongDanXiangMuLst">
         <tr class="Tablehead" height="23px" onClick="changeColor(this)">
        <td nowrap align="center">&nbsp;<s:property value="txtGongDuanName" /></td>
        <td nowrap align="center">&nbsp;<s:property value="txtWeiXiuNeiRong" /></td>
        <td nowrap align="center">&nbsp;<s:property value="txtGongShiFei" /></td>
        <td nowrap align="center">&nbsp;<s:property value="ddlZhangTao" /></td>        
        <td nowrap align="center">&nbsp;<s:property value="txtBanZu" /></td>
        <td nowrap align="center">&nbsp;<s:property value="txtZhuXiuRen" /></td>
        <td nowrap align="center">&nbsp;<s:property value="txtWanJianRen" /></td>
        </tr> 
 		</s:iterator>
         


        </table>
        
        <br />
   <table  border="1" cellspacing="1" cellpadding="0" style="border:1px solid gray;border-collapse:collapse;width:98%;font-size:9px;"  >
     <!--维修物料明细-->
     <tr class="Tablehead" height="23px">
       <td nowrap align="center">&nbsp;物料编号</td>
       <td nowrap align="center">&nbsp;名称及规格</td>
       <td nowrap align="center">&nbsp;数量</td>
       <td nowrap align="center">&nbsp;单价</td>
       <td nowrap align="center">&nbsp;帐套</td>       
     </tr> 

      <s:iterator value="gongDanWuLiaoLst">
      <tr class="Tablehead" height="23px" onClick="changeColor(this)">
        <td nowrap align="center">&nbsp;<s:property value="txtWuLiaoCode" /></td>
        <td nowrap align="center">&nbsp;<s:property value="txtWuLiaoName" /></td>
        <td nowrap align="center">&nbsp;<s:property value="txtQty" /></td>
        <td nowrap align="center">&nbsp;<s:property value="txtPrice" /></td>
        <td nowrap align="center">&nbsp;<s:property value="ddlZhangTao" /></td>       
     </tr>   
     </s:iterator>

   </table>
  </fieldset>
     
     <br />
     <div >
      <!--列举各项费用合计start-->  
<fieldset>   
        <legend>费用信息</legend>  
      <table   border="1" cellspacing="1" cellpadding="0" style="border:1px solid gray;border-collapse:collapse;width:98%;font-size:9px;" >
				<tr>
					<td colspan="6">会员等级：<span
						style="color: Blue; font-weight: bold; padding-right: 10px;"><s:property
								value='gongDan.txtHuiYuanDengJi' /></span> 会员卡号：<span
						style="color: Blue; font-weight: bold; padding-right: 10px;"><s:property
								value='gongDan.txtHuiYuanHao' /></span> 工时折扣:<span
						style="color: Blue; font-weight: bold; padding-right: 10px;"><s:property
								value='gongDan.txtGongShiZheKou' /></span>物料折扣:<span
						style="color: Blue; font-weight: bold;"><s:property
								value='gongDan.txtCaiLiaoZheKou' /></span></td>

				</tr>
				<tr>
					<td width="80">工时费(折前)</td>
					<td width="100" style="color: blue; font-weight: bold;"><s:property
							value='gongDan.txtGongShiZheQian' /></td>
					<td width="80">材料费(折前)</td>
					<td width="100" style="color: blue; font-weight: bold;"><s:property
							value='gongDan.txtCaiLiaoZheQian' /></td>
					<td width="80">合计(折前)</td>
					<td width="100" style="color: blue; font-weight: bold;"><s:property
							value='gongDan.txtZheQianHeJi' /></td>
				</tr>
				<tr>
					<td>工时费(折后)</td>
					<td style="color: blue; font-weight: bold;"><s:property
							value='gongDan.txtGongShiZheHou' /></td>
					<td>材料费(折后)</td>
					<td style="color: blue; font-weight: bold;"><s:property
							value='gongDan.txtCaiLiaoZheHou' /></td>
					<td>合计(折后)</td>
					<td style="color: blue; font-weight: bold;"><s:property
							value='gongDan.txtZheHouHeJi' /></td>
				</tr>


			</table>
  </fieldset>
      <!--列举各项费用合计end-->
      
      <br />
      
      
     </div>
</body>
</html>