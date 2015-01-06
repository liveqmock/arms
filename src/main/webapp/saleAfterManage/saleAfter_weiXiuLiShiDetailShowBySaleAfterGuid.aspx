
 
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
    
    
 <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=17a48e594e374bee9428a515058eb666" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=17a48e594e374bee9428a515058eb666" /><script src="../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../JS/Frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../JS/Frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../JS/common.js?v=17a48e594e374bee9428a515058eb666" type="text/javascript"></script><link href="../style/common.css?v=17a48e594e374bee9428a515058eb666" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="saleAfter_weiXiuLiShiDetailShowBySaleAfterGuid.aspx?saleAfterGuid=655f7aaa-e5eb-4b16-a15d-77c9723529fa&amp;d=Mon+Jan+05+2015+14%3a45%3a12+GMT+0800" id="form1">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMjEzNDE4MzE3MA9kFgICAw9kFjxmDw8WAh4EVGV4dAUOSkREMjAxNTAxMDEwNTFkZAIBDw8WAh8ABQEyZGQCAg8PFgIfAAUJ5L2V5bu65YabZGQCAw8PFgIfAAUJ5L2V5bu65YabZGQCBA8PFgIfAAULMTMzMDI5MTkxNjBkZAIFDw8WAh8ABQzkuIDmsb3kuLDnlLBkZAIGDw8WAh8ABQU2NDc5OGRkAgcPDxYCHwAFCeael+azvem5j2RkAggPDxYCHwAFETIwMTUtMS0xIDE3OjA4OjU0ZGQCCQ8PFgIfAGVkZAIKDw8WAh8ABQnnsqRCMTI4TU1kZAILDw8WAh8ABRFMVlNIQ0ZBRTBBRjU1OTg0N2RkAgwPFgIeCWlubmVyaHRtbGVkAg0PFgIfAWVkAg8PFgIfAWVkAhAPFgIeC18hSXRlbUNvdW50AgIWBGYPZBYCZg8VCAbpkqPph5En5ZCO5p2g77yM5Y+z5ZCO6Zeo77yM5Y+z5ZCO5Y+277yM5bC+55uWBjYwMC4wMAY2MDAuMDAG5L+d6ZmpAAAAZAIBD2QWAmYPFQgG5Za35ryGJ+WQjuadoO+8jOWPs+WQjumXqO+8jOWPs+WQjuWPtu+8jOWwvueblgc0MDAwLjAwBzQwMDAuMDAG5L+d6ZmpAAAAZAIRDxYCHwICBxYOZg9kFgJmDxUHDTVNNTEtRjE3RTg1MEEY5ZCO5L+d6Zmp5p2g5Y+z5L6n5pSv5p62BDEuMDAGMTY3LjAwCDE2Ny4wMDAwBuS/nemZqQYxNjcuMDBkAgEPZBYCZg8VBw82TTUxLU40MDVBMDItQUEM5rK5566x55uW5p2/BDEuMDAFNzMuMDAHNzMuMDAwMAbkv53pmakFNzMuMDBkAgIPZBYCZg8VBxA2TTU5LUYyOTdCMDBBQy1BFeWPs+WQjuWPtuWtkOadv+eOu+eSgwQxLjAwBjM2MC4wMAgzNjAuMDAwMAbkv53pmakGMzYwLjAwZAIDD2QWAmYPFQcPOE01OS0xMzQwNEJBLUFBDOWPs+S+p+WwvueBrwQxLjAwBjUyMC4wMAg1MjAuMDAwMAbkv53pmakGNTIwLjAwZAIED2QWAmYPFQcPWUYxQS01NDI4MEI2MkFFFeWQjuWPtuWtkOadv+WHuumjjuWPowQxLjAwBTczLjAwBzczLjAwMDAG5L+d6ZmpBTczLjAwZAIFD2QWAmYPFQcQNU01MS1GMTNBNDE2QUQtQQ/lj7PkvqflsL7nga/luqcEMS4wMAY0MjAuMDAINDIwLjAwMDAG5L+d6ZmpBjQyMC4wMGQCBg9kFgJmDxUHDThNNTEtRjE3OTA2QkEP5ZCO5L+d6Zmp5p2g572pBDEuMDAHMTUzMy4wMAkxNTMzLjAwMDAG5L+d6ZmpBzE1MzMuMDBkAhIPDxYCHwBlZGQCEw8PFgIfAGVkZAIUDw8WAh8AZWRkAhUPDxYCHwAFBzQ2MDAuMDBkZAIWDw8WAh8ABQc0NjAwLjAwZGQCFw8PFgIfAAUBMGRkAhgPDxYCHwAFCTMxNDYuMDAwMGRkAhkPDxYCHwAFBzMxNDYuMDBkZAIaDw8WAh8ABQEwZGQCGw8PFgIfAAUBMGRkAh4PDxYCHwAFBzc3NDYuMDBkZAIfDxYCHghkaXNhYmxlZAUIZGlzYWJsZWRkAiAPFgIfAwUIZGlzYWJsZWRkZP4JENu5JzkwmxoXWwvhtGN2Z5TR" />
</div>

     <fieldset >
     <legend>车辆信息</legend>
     <table border="0" width="98%" border="0" >
     <tr >
      <td nowrap>维修单号:</td>
      <td nowrap><span id="labWeiXiuDanHao">JDD20150101051</span></td>
      <td nowrap>协议单号:</td>
      <td nowrap><span id="labXieYiDanHao">2</span></td>
      <td nowrap>车 主:</td>
      <td nowrap><span id="labCheZhu">何建军</span></td>
      <td nowrap>联系人:</td>
      <td nowrap><span id="labLianXi">何建军</span></td>
      <td nowrap>联系电话:</td>
      <td nowrap><span id="labLianXiTel">13302919160</span></td>
     </tr>
     <tr >
      <td nowrap>厂家品牌/车型:</td>
      <td nowrap><span id="labChangJiaPinPai">一汽丰田</span></td>
      <td nowrap>里程:</td>
      <td nowrap><span id="labLiCheng">64798</span></td>
      <td nowrap>服务顾问:</td>
      <td nowrap><span id="labFuWuGuWen">林泽鹏</span></td>
      <td nowrap>入厂日期:</td>
      <td nowrap><span id="labRuChangRiQi">2015-1-1 17:08:54</span></td>
      <td nowrap>出厂日期:</td>
      <td nowrap><span id="labChuChangRiQi"></span></td>
     </tr>
     <tr>
     <td>车牌号:</td>
     <td><span id="labChePaiHaoMa">粤B128MM</span> </td>
     <td>车架号码:</td>
     <td><span id="labCheJiaHaoMa">LVSHCFAE0AF559847</span> </td>
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
         <td width="25%"><textarea name="beiZhu" id="beiZhu" cols="40" rows="5" style="width:100%;"></textarea></td>
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
        <td nowrap align="center">&nbsp;钣金</td>
        <td nowrap align="center">&nbsp;后杠，右后门，右后叶，尾盖</td>
        <td nowrap align="center">&nbsp;600.00</td>
        <td nowrap align="center">&nbsp;600.00</td>
        <td nowrap align="center">&nbsp;保险</td>
        
        <td nowrap align="center">&nbsp;</td>
        <td nowrap align="center">&nbsp;</td>
        <td nowrap align="center">&nbsp;</td>
        </tr> 
 
         
         <tr class="Tablehead" height="23px" onclick="changeColor(this)">
        <td nowrap align="center">&nbsp;喷漆</td>
        <td nowrap align="center">&nbsp;后杠，右后门，右后叶，尾盖</td>
        <td nowrap align="center">&nbsp;4000.00</td>
        <td nowrap align="center">&nbsp;4000.00</td>
        <td nowrap align="center">&nbsp;保险</td>
        
        <td nowrap align="center">&nbsp;</td>
        <td nowrap align="center">&nbsp;</td>
        <td nowrap align="center">&nbsp;</td>
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
        <td nowrap align="center">&nbsp;5M51-F17E850A</td>
        <td nowrap align="center">&nbsp;后保险杠右侧支架</td>
        <td nowrap align="center">&nbsp;1.00</td>
        <td nowrap align="center">&nbsp;167.00</td>
        <td nowrap align="center">&nbsp;167.0000</td>
        <td nowrap align="center">&nbsp;保险</td>
        <td nowrap align="center">&nbsp;167.00</td>       
        </tr>   
         
           <tr class="Tablehead" height="23px" onclick="changeColor(this)">
        <td nowrap align="center">&nbsp;6M51-N405A02-AA</td>
        <td nowrap align="center">&nbsp;油箱盖板</td>
        <td nowrap align="center">&nbsp;1.00</td>
        <td nowrap align="center">&nbsp;73.00</td>
        <td nowrap align="center">&nbsp;73.0000</td>
        <td nowrap align="center">&nbsp;保险</td>
        <td nowrap align="center">&nbsp;73.00</td>       
        </tr>   
         
           <tr class="Tablehead" height="23px" onclick="changeColor(this)">
        <td nowrap align="center">&nbsp;6M59-F297B00AC-A</td>
        <td nowrap align="center">&nbsp;右后叶子板玻璃</td>
        <td nowrap align="center">&nbsp;1.00</td>
        <td nowrap align="center">&nbsp;360.00</td>
        <td nowrap align="center">&nbsp;360.0000</td>
        <td nowrap align="center">&nbsp;保险</td>
        <td nowrap align="center">&nbsp;360.00</td>       
        </tr>   
         
           <tr class="Tablehead" height="23px" onclick="changeColor(this)">
        <td nowrap align="center">&nbsp;8M59-13404BA-AA</td>
        <td nowrap align="center">&nbsp;右侧尾灯</td>
        <td nowrap align="center">&nbsp;1.00</td>
        <td nowrap align="center">&nbsp;520.00</td>
        <td nowrap align="center">&nbsp;520.0000</td>
        <td nowrap align="center">&nbsp;保险</td>
        <td nowrap align="center">&nbsp;520.00</td>       
        </tr>   
         
           <tr class="Tablehead" height="23px" onclick="changeColor(this)">
        <td nowrap align="center">&nbsp;YF1A-54280B62AE</td>
        <td nowrap align="center">&nbsp;后叶子板出风口</td>
        <td nowrap align="center">&nbsp;1.00</td>
        <td nowrap align="center">&nbsp;73.00</td>
        <td nowrap align="center">&nbsp;73.0000</td>
        <td nowrap align="center">&nbsp;保险</td>
        <td nowrap align="center">&nbsp;73.00</td>       
        </tr>   
         
           <tr class="Tablehead" height="23px" onclick="changeColor(this)">
        <td nowrap align="center">&nbsp;5M51-F13A416AD-A</td>
        <td nowrap align="center">&nbsp;右侧尾灯座</td>
        <td nowrap align="center">&nbsp;1.00</td>
        <td nowrap align="center">&nbsp;420.00</td>
        <td nowrap align="center">&nbsp;420.0000</td>
        <td nowrap align="center">&nbsp;保险</td>
        <td nowrap align="center">&nbsp;420.00</td>       
        </tr>   
         
           <tr class="Tablehead" height="23px" onclick="changeColor(this)">
        <td nowrap align="center">&nbsp;8M51-F17906BA</td>
        <td nowrap align="center">&nbsp;后保险杠罩</td>
        <td nowrap align="center">&nbsp;1.00</td>
        <td nowrap align="center">&nbsp;1533.00</td>
        <td nowrap align="center">&nbsp;1533.0000</td>
        <td nowrap align="center">&nbsp;保险</td>
        <td nowrap align="center">&nbsp;1533.00</td>       
        </tr>   
         

        </table>
     </fieldset>
     
     <!--结算相关提示信息start-->
      <table border="0" cellpadding="0" cellspacing="0" width="98%" >
       <tr>
       <td height="26px">提示信息</td>
       <td><span id="labTiShiInfo"></span></td>
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
          <td ><span id="labGongShiHeJi">4600.00</span></td>
         <td nowrap >&nbsp;实收工时费&nbsp;</td>
         <td bgcolor="#FF9403"><span id="labShiJiGongShiFei">4600.00</span></td>
         <td nowrap>&nbsp;工时券折抵&nbsp;</td>
         <td bgcolor="#FF9403"><span id="labGongShiQuanZheDi">0</span></td>
       </tr>
       
     <tr bgcolor='white' height='26px'>
         <td nowrap >&nbsp;合计材料费&nbsp;</td>
          <td ><span id="labCaiLiaoHeJi">3146.0000</span></td>
         <td nowrap>&nbsp;实收材料费&nbsp;</td>
         <td bgcolor="#FF9403"><span id="labShiJiCaiLiaoFei">3146.00</span></td>
         <td nowrap>&nbsp;材料券折抵&nbsp;</td>
         <td bgcolor="#FF9403"><span id="labCaiLiaoQuanZheDi">0</span></td>
       </tr>
    
     <tr bgcolor='white' height='26px'>
         <td nowrap >&nbsp;补差价&nbsp;</td>
          <td bgcolor="#FF9403"><span id="labBuChaJia">0</span>/优惠推广:<span id="labYouHuiTuiGuang">0.00</span></td>
         <td nowrap>&nbsp;免赔&nbsp;</td>
         <td bgcolor="#FF9403"><span id="labMianPei">0.00</span></td>
         <td nowrap bgcolor="#FFFF03" style="font-weight:bold;">&nbsp;合计&nbsp;</td>
         <td bgcolor="#FFFF03"><span id="labHeJi" style="font-weight:bold;">7746.00</span></td>
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
  <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWBwKZyP3bDQLI96a2CQKb5v3bBwL1h9jGBgL5hLCQBQLexoPgDAK14fOOCjM7UeFXnm2SyXuN0CzNycwvCHGc" />
</div></form>
</body>
</html>