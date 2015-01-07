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
    <form name="form1" method="post" action="saleAfter_weiXiuLiShiDetailShowBySaleAfterGuid.aspx?saleAfterGuid=c2c6e440-1f8a-424e-b484-91d55db56289&amp;d=Mon+Jan+05+2015+14%3a48%3a02+GMT+0800" id="form1">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="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" />
</div>

     <fieldset >
     <legend>车辆信息</legend>
     <table border="0" width="98%" border="0" >
     <tr >
      <td nowrap>维修单号:</td>
      <td nowrap><span id="labWeiXiuDanHao">JDD20150102013</span></td>
      <td nowrap>协议单号:</td>
      <td nowrap><span id="labXieYiDanHao">SL0X15013546</span></td>
      <td nowrap>车 主:</td>
      <td nowrap><span id="labCheZhu">吴月梅</span></td>
      <td nowrap>联系人:</td>
      <td nowrap><span id="labLianXi">吴月梅</span></td>
      <td nowrap>联系电话:</td>
      <td nowrap><span id="labLianXiTel">13926586569</span></td>
     </tr>
     <tr >
      <td nowrap>厂家品牌/车型:</td>
      <td nowrap><span id="labChangJiaPinPai">雷克萨斯</span></td>
      <td nowrap>里程:</td>
      <td nowrap><span id="labLiCheng">25580</span></td>
      <td nowrap>服务顾问:</td>
      <td nowrap><span id="labFuWuGuWen">张先赞</span></td>
      <td nowrap>入厂日期:</td>
      <td nowrap><span id="labRuChangRiQi">2015-1-2 12:16:41</span></td>
      <td nowrap>出厂日期:</td>
      <td nowrap><span id="labChuChangRiQi">2015-1-2 17:57:57</span></td>
     </tr>
     <tr>
     <td>车牌号:</td>
     <td><span id="labChePaiHaoMa">粤B2G1E9</span> </td>
     <td>车架号码:</td>
     <td><span id="labCheJiaHaoMa">JTJZA11A9D2029618</span> </td>
     </tr>
     </table>
     </fieldset>
     
     <!--维修明细-->
     <fieldset>
        <legend>维修信息</legend>
        <table border="0" width="98%">
         <tr><td>交修原因</td><td>故障原因</td><td>维修措施</td><td>维修备注</td></tr>
         <tr>
         <td width="25%"><textarea name="jiaoXiu" id="jiaoXiu" cols="40" rows="5" style="width:100%;"></textarea></td>
         <td width="25%"><textarea name="guZhang" id="guZhang" cols="40" rows="5" style="width:100%;"></textarea></td>
         <td width="25%"><textarea name="weiXiu" id="weiXiu" cols="40" rows="5" style="width:100%;"></textarea></td>
         <td width="25%"><textarea name="beiZhu" id="beiZhu" cols="40" rows="5" style="width:100%;">右侧雨刮片副厂件，未更换；</textarea></td>
         </tr>
        </table>

        <br />
        <table  border="1" cellspacing="1" cellpadding="0" style="border:1px solid gray;border-collapse:collapse;width:98%;font-size:9px;" >
        <!--存放详细维修信息-->
        <tr class="Tablehead" height="23px">
        <td nowrap align="center">&nbsp;工段名称</td>
        <td nowrap align="center">&nbsp;维修内容</td>
        <td nowrap align="center">&nbsp;工时费</td>
        <td nowrap align="center">&nbsp;实际工时费</td>
        <td nowrap align="center">&nbsp;帐套</td>
        
        <td nowrap align="center">&nbsp;维修班组</td>
        <td nowrap align="center">&nbsp;主修人</td>
        <td nowrap align="center">&nbsp;完检人</td>
        </tr> 

        
         <tr class="Tablehead" height="23px" onclick="changeColor(this)">
        <td nowrap align="center">&nbsp;保养</td>
        <td nowrap align="center">&nbsp;30,000KM保养</td>
        <td nowrap align="center">&nbsp;495.00</td>
        <td nowrap align="center">&nbsp;495.00</td>
        <td nowrap align="center">&nbsp;厂家保修</td>
        
        <td nowrap align="center">&nbsp;一般维修一组</td>
        <td nowrap align="center">&nbsp;李栋</td>
        <td nowrap align="center">&nbsp;张先赞</td>
        </tr> 
 
         


        </table>
        
        <br />
        <table  border="1" cellspacing="1" cellpadding="0" style="border:1px solid gray;border-collapse:collapse;width:98%;font-size:9px;"  >
        <!--维修物料明细-->
        <tr class="Tablehead" height="23px">
        <td nowrap align="center">&nbsp;配件编号</td>
        <td nowrap align="center">&nbsp;配件名称</td>
        <td nowrap align="center">&nbsp;数量</td>
        <td nowrap align="center">&nbsp;单价</td>
        <td nowrap align="center">&nbsp;合计</td>
        <td nowrap align="center">&nbsp;帐套</td>
        <td nowrap align="center">&nbsp;实际费用</td>       
        </tr> 

        
           <tr class="Tablehead" height="23px" onclick="changeColor(this)">
        <td nowrap align="center">&nbsp;0415231090</td>
        <td nowrap align="center">&nbsp;机油滤清器滤芯组件</td>
        <td nowrap align="center">&nbsp;1.00</td>
        <td nowrap align="center">&nbsp;61.00</td>
        <td nowrap align="center">&nbsp;61.0000</td>
        <td nowrap align="center">&nbsp;厂家保修</td>
        <td nowrap align="center">&nbsp;61.00</td>       
        </tr>   
         
           <tr class="Tablehead" height="23px" onclick="changeColor(this)">
        <td nowrap align="center">&nbsp;0880880080</td>
        <td nowrap align="center">&nbsp;雷克萨斯纯牌车窗清洗液</td>
        <td nowrap align="center">&nbsp;1.00</td>
        <td nowrap align="center">&nbsp;46.00</td>
        <td nowrap align="center">&nbsp;46.0000</td>
        <td nowrap align="center">&nbsp;厂家保修</td>
        <td nowrap align="center">&nbsp;46.00</td>       
        </tr>   
         
           <tr class="Tablehead" height="23px" onclick="changeColor(this)">
        <td nowrap align="center">&nbsp;MF0W-40</td>
        <td nowrap align="center">&nbsp;金装美孚1号0W-40</td>
        <td nowrap align="center">&nbsp;5.00</td>
        <td nowrap align="center">&nbsp;160.00</td>
        <td nowrap align="center">&nbsp;800.0000</td>
        <td nowrap align="center">&nbsp;厂家保修</td>
        <td nowrap align="center">&nbsp;167.00</td>       
        </tr>   
         
           <tr class="Tablehead" height="23px" onclick="changeColor(this)">
        <td nowrap align="center">&nbsp;8521410100</td>
        <td nowrap align="center">&nbsp;后刮水器橡胶条</td>
        <td nowrap align="center">&nbsp;1.00</td>
        <td nowrap align="center">&nbsp;32.00</td>
        <td nowrap align="center">&nbsp;32.0000</td>
        <td nowrap align="center">&nbsp;厂家保修</td>
        <td nowrap align="center">&nbsp;32.00</td>       
        </tr>   
         
           <tr class="Tablehead" height="23px" onclick="changeColor(this)">
        <td nowrap align="center">&nbsp;8521468020</td>
        <td nowrap align="center">&nbsp;左侧刮水器橡胶条</td>
        <td nowrap align="center">&nbsp;1.00</td>
        <td nowrap align="center">&nbsp;55.00</td>
        <td nowrap align="center">&nbsp;55.0000</td>
        <td nowrap align="center">&nbsp;厂家保修</td>
        <td nowrap align="center">&nbsp;55.00</td>       
        </tr>   
         
           <tr class="Tablehead" height="23px" onclick="changeColor(this)">
        <td nowrap align="center">&nbsp;8521453080</td>
        <td nowrap align="center">&nbsp;左侧刮水器橡胶条</td>
        <td nowrap align="center">&nbsp;1.00</td>
        <td nowrap align="center">&nbsp;70.00</td>
        <td nowrap align="center">&nbsp;70.0000</td>
        <td nowrap align="center">&nbsp;厂家保修</td>
        <td nowrap align="center">&nbsp;70.00</td>       
        </tr>   
         
           <tr class="Tablehead" height="23px" onclick="changeColor(this)">
        <td nowrap align="center">&nbsp;8713930040</td>
        <td nowrap align="center">&nbsp;空气净化滤清器</td>
        <td nowrap align="center">&nbsp;1.00</td>
        <td nowrap align="center">&nbsp;306.00</td>
        <td nowrap align="center">&nbsp;306.0000</td>
        <td nowrap align="center">&nbsp;厂家保修</td>
        <td nowrap align="center">&nbsp;306.00</td>       
        </tr>   
         
           <tr class="Tablehead" height="23px" onclick="changeColor(this)">
        <td nowrap align="center">&nbsp;9043012031</td>
        <td nowrap align="center">&nbsp;衬垫(用于油底壳排放</td>
        <td nowrap align="center">&nbsp;1.00</td>
        <td nowrap align="center">&nbsp;6.00</td>
        <td nowrap align="center">&nbsp;6.0000</td>
        <td nowrap align="center">&nbsp;厂家保修</td>
        <td nowrap align="center">&nbsp;6.00</td>       
        </tr>   
         
           <tr class="Tablehead" height="23px" onclick="changeColor(this)">
        <td nowrap align="center">&nbsp;CSYH</td>
        <td nowrap align="center">&nbsp;车身润滑四合一</td>
        <td nowrap align="center">&nbsp;1.00</td>
        <td nowrap align="center">&nbsp;80.00</td>
        <td nowrap align="center">&nbsp;80.0000</td>
        <td nowrap align="center">&nbsp;厂家保修</td>
        <td nowrap align="center">&nbsp;80.00</td>       
        </tr>   
         

        </table>
     </fieldset>
     
     <!--结算相关提示信息start-->
      <table border="0" cellpadding="0" cellspacing="0" width="98%" >
       <tr>
       <td height="26px">提示信息</td>
       <td><span id="labTiShiInfo">右侧雨刮片副厂件，未更换；</span></td>
       </tr>
       <tr>
       <td  height="26px">结算信息:</td>
       <td><span id="labJieSuanInfo"></span></td>
       </tr>
       <tr>
       <td  height="26px">折扣信息:</td>
       <td><span id="labZheKouInfo"></span></td>
       </tr>
      </table>
     <!--结算相关提示信息end-->
     <br />
     <div >
      <!--列举各项费用合计start-->
      <table border ="0" cellpadding="0" cellspacing="1" width="98%" bgcolor="black" id="tabHeJi" >

       <tr bgcolor='white' height='26px'>
         <td nowrap >&nbsp;合计工时费&nbsp;</td>
          <td ><span id="labGongShiHeJi">495.00</span></td>
         <td nowrap >&nbsp;实收工时费&nbsp;</td>
         <td bgcolor="#FF9403"><span id="labShiJiGongShiFei">495.00</span></td>
         <td nowrap>&nbsp;工时券折抵&nbsp;</td>
         <td bgcolor="#FF9403"><span id="labGongShiQuanZheDi">0.00</span></td>
       </tr>
       
     <tr bgcolor='white' height='26px'>
         <td nowrap >&nbsp;合计材料费&nbsp;</td>
          <td ><span id="labCaiLiaoHeJi">1456.0000</span></td>
         <td nowrap>&nbsp;实收材料费&nbsp;</td>
         <td bgcolor="#FF9403"><span id="labShiJiCaiLiaoFei">823.00</span></td>
         <td nowrap>&nbsp;材料券折抵&nbsp;</td>
         <td bgcolor="#FF9403"><span id="labCaiLiaoQuanZheDi">0.00</span></td>
       </tr>
    
     <tr bgcolor='white' height='26px'>
         <td nowrap >&nbsp;补差价&nbsp;</td>
          <td bgcolor="#FF9403"><span id="labBuChaJia">633.00</span>/优惠推广:<span id="labYouHuiTuiGuang">0.00</span></td>
         <td nowrap>&nbsp;免赔&nbsp;</td>
         <td bgcolor="#FF9403"><span id="labMianPei">0.00</span></td>
         <td nowrap bgcolor="#FFFF03" style="font-weight:bold;">&nbsp;合计&nbsp;</td>
         <td bgcolor="#FFFF03"><span id="labHeJi" style="font-weight:bold;">1951.00</span></td>
       </tr>
       
      </table> 
      <!--列举各项费用合计end-->
      
      <br />
      <div >
         <table border="0" cellpadding="0" cellspacing="0" width="98%" >
           <tr>
            <td align="center"><input name="btnParent" type="button" id="btnParent" onclick="parentClick()" value="历史上一条" class="btn6" disabled="disabled" />     </td>
            <td align="center"><input name="btnNext" type="button" id="btnNext" onclick="nextClick()" value="历史下一条" class="btn6" disabled="disabled" />     </td>
            <td align="center">1条记录数(当前客户维修历史信息)    </td>
           </tr>
         </table>
      </div>
      
     </div>
     
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="7A7DA5FE" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWBwKThvGPBgLI96a2CQKb5v3bBwL1h9jGBgL5hLCQBQLexoPgDAK14fOOCnZFvco5sL+KDxIBu3v4Q+Mczsim" />
</div></form>
</body>
</html>