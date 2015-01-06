
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>

</title>
    <style type="text/css">
    
    .font1
    {
        color:#808080;
        font-weight:bold;
    }
    .font2
    {
        color:blue;
        font-weight:bold;
     }
    
    .font2Max
    {
        color:Blue;
        font-weight:bold;
        font-size:18px;
        }
    
    </style>

 <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../JS/Frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../JS/Frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../JS/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="saleAfter_huiYuanJieSuan.aspx?saleAfterGuid=fccde036-8415-49b3-ad09-d7ca4dc52871&amp;vin=JTJZA11A8D2441061&amp;memberId=99585&amp;d=Tue+Jan+06+2015+12%3a12%3a33+GMT+0800" id="form1">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJNzY0MjAyNzA5D2QWAgIDD2QWGgIGDw8WAh4EVGV4dAUJ572X5Lyf5aWHZGQCBw8PFgIfAAULMTM3Mjg4MjMyODNkZAIIDw8WAh8ABQsxMzcwMDAwMDAwMGRkAgkPDxYCHwAFDOmYs+WFieS8muWRmGRkAgoPDxYCHwAFCDMyMDAwNTM4ZGQCCw8PFgIfAAUW5bel5pe2OjAuOTXmnZDmlpk6MS4wMGRkAgwPDxYCHwAFATBkZAINDw8WAh8ABRblt6Xml7Y6MC45NeadkOaWmToxLjAwZGQCDw8PFgQfAAUBMB4HVmlzaWJsZWhkZAIQDw8WBB4HRW5hYmxlZGgfAWhkZAIRDw8WBB8CaB8BaGRkAhIPDxYEHwJoHwFoZGQCEw8PFgQfAmgfAWhkZGR6G2CGaNZ9bK/kiprWtvNAXnAHAw==" />
</div>



    <!--会员隐藏域start-->
    <input name="txtHuiYuanGongShiZheKou" type="text" value="0.95" id="txtHuiYuanGongShiZheKou" style="display:none;" />
    <input name="txtHuiYuanCaiLiaoZheKou" type="text" value="1.00" id="txtHuiYuanCaiLiaoZheKou" style="display:none;" />
    <input name="txtHuiYuanKaQianBaoGongShiZheKou" type="text" value="0.95" id="txtHuiYuanKaQianBaoGongShiZheKou" style="display:none;" />
    <input name="txtHuiYuanKaQianBaoCaiLiaoZheKou" type="text" value="1.00" id="txtHuiYuanKaQianBaoCaiLiaoZheKou" style="display:none;" />

    <input name="txtWeiXiuXiangMuCount" type="text" value="0" id="txtWeiXiuXiangMuCount" style="display:none;" />
    <input name="txtWeiXiuWuLiaoCount" type="text" value="1" id="txtWeiXiuWuLiaoCount" style="display:none;" />
    <!--会员隐藏域end-->

    <div>
    <table border="0" style="width:100%;border-bottom:2px dotted #dddddd;">
        <tr><td class="titlebg"><span>会员结算</span>
        <span class="titleSpan1"></span> 
         </td><td align="right" style="padding-right:20px;color:Blue;font-weight:bold;">
           <a href ="#" onclick="javascript:location.href=location.href;" >阳光会员:RG01M1449585卡钱包余额：0</a>
           </td></tr>
         </table> 

    </div>


    <div style="padding-left:5px;padding-top:3px;padding-right:5px;">  
    <!--客户信息 start-->
     <div style="background-color:#FF4500;height:30px;font-weight:bold;padding-left:5px;padding-top:5px;color:White;">车主信息：</div>
     <div >
     <span class="font1">车主名称：</span><span id="labCheZhuName" class="font2">罗伟奇</span>
     <span class="font1">车主手机：</span><span id="labCheZhuMob" class="font2">13728823283</span>
     <span class="font1">关键手机：</span><span id="labHuiYuanGuanJianMob" class="font2">13700000000</span>
     </div>
      
     <br />
     <!--会员特权 -->
     <div style="background-color:#F9DBD1;height:30px;font-weight:bold;padding-left:5px;padding-top:5px;">会员信息：</div>
     
     <div style="padding-top:10px;border-bottom:1px dotted gray;height:25px;">
      <span style="font-weight:bold;color:Black;">会员特权：</span>
      <span class="font1">会员等级：</span><span id="labHuiYuanDengJi" class="font2">阳光会员</span>
      <span class="font1">会员卡号：</span><span id="labHuiYuanKaHao" class="font2">32000538</span>
      <span class="font1">会员折扣：</span><span id="labHuiYuanZheKou" class="font2">工时:0.95材料:1.00</span>
     </div>

     <div style="border-bottom:1px dotted gray;height:25px;font-weight:bold;font-size:12px;padding-top:5px;"> 
     <span style="font-weight:bold;color:Black;">折扣特权</span>
     <span class="font1">卡钱包余额：</span><span id="labKaQianBaoJinE" class="font2">0</span>
     <span class="font1">卡钱包折扣：</span><span id="labKaQianBaoZheKou" class="font2">工时:0.95材料:1.00</span>
     </div>



     <!--费用明细-->
     <div style="background-color:#7F6252;height:30px;font-weight:bold;padding-left:5px;padding-top:5px;color:White;">费用明细：</div>
     <div style="padding-top:5px;">  
        <!--修改成列表形式 start-->
        <table border="1"  style="border-collapse:collapse;border:1px solid #d6d3ce;width:600px" >
         <tr>
          <td><span class="font1">折前工时：</span></td><td><span class="font2">0</span></td>          
          <td><span class="font1">折前材料：</span></td><td><span class="font2">200.0000</span> </td>       
          <td><span class="font1">折前应付：</span></td><td><span class="font2">200.00</span> </td>
         </tr>
          <tr>
          <td><span class="font1">工时券：</span></td><td><span class="font2">0.00</span></td>
          <td><span class="font1">材料券：</span></td><td><span class="font2">0.00</span> </td>
          <td><span class="font1">自费合计：</span></td><td>   <span class="font2">633.00</span> </td>
         </tr>
         <tr>
          <td><span class="font1">工时优惠：</span></td><td><span class="font2">0</span></td>
          <td><span class="font1">材料优惠：</span></td><td><span class="font2">0.0000</span> </td>
          <td><span class="font1">折后应付：</span></td><td><span class="font2Max" >833.00</span> </td>
         </tr>
        </table>
        <!--修改成列表形式 end-->


       <br />
       <span class="font1">折扣信息：</span>
       <input name="txtZheKouInfo" type="text" id="txtZheKouInfo" style="width:100%;border:none;border-bottom:1px solid gray;" />
       <br />
       <span class="font1">卡钱包支付金额：</span>
       
        
     </div>
        <br />
        
       
        
        
    </div>
     
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="15BF1C18" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWCAK2jeiTDALp3dmXAgKY6+c/AsSOh/IPApK9x4oIAsWYqJEEAsq/x5QGAraRwcIHR87elU9TxBLFnbf1sdvVwLozfrA=" />
</div></form>
</body>
</html>