
<html>
<head> 
<STYLE type=text/css media=print>.Noprint {
	DISPLAY: none
}
</Style>
<style type="text/css" > 
body, td, th 
{
	vnd.ms-excel.numberformat:@;
    font-family: "Arial" ,"宋体" ,  "Helvetica" , "sans-serif";
    font-size:13px; 
    margin-top: 0px;
    margin-right: 0px;
    margin-bottom: 0px;
    margin-left: 0px; margin-top:0px;
    SCROLLBAR-HIGHLIGHT-COLOR: #F5F9FF;
    SCROLLBAR-SHADOW-COLOR: #828282;
    SCROLLBAR-3DLIGHT-COLOR: #828282;
    SCROLLBAR-ARROW-COLOR: #797979;
    SCROLLBAR-TRACK-COLOR: #ECECEC;
    SCROLLBAR-DARKSHADOW-COLOR: #ffffff;
    }
    
.printTable { border:#000000 solid 1px; border-collapse:collapse;table-layout:fixed; }
.printTable tr { height:22px;}
.printTable th { font-weight: normal; border:#000000 solid 1px;}
.printTable td { border:#000000 solid 1px;white-space:nowrap;overflow:hidden;}
.PageNext{page-break-after:always;}

td
{
	height:22px;
}

#weiXiuList td
{
	border-bottom:1px dotted black;border-right:1px dotted black;
}
     
 #wuLiaoList td
 {
	border-bottom:1px dotted black;border-right:1px dotted black;
 }
 
 #billHuiZong td
 {
 	font-weight:bold;
 	border:2px solid black;
 	text-align:center;
 	}
</style>
 <title>
	维修结算单
</title><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /></head>
 <script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script>
   <script language="javascript" type="text/javascript" >

      function show() {
          window.print();
      }

      function showExcelInfo() {

           var z = window.open("saleAfter_WeiXiuJieSuanPrintExcel.aspx?saleAfterGuid=8a830b31-41e3-4383-bfc0-65c0fc8f325e&printType=1&d=" + new Date(), "xiaZaiExcel", 'height=5,width=5,toolbar=no,resizable=yes,status=no,menubar=no,scrollbars=no');
          z.focus();
        }

  function checkPrintZhuXiuRen(obj) {
            if (obj.checked) {
                $("span[name='sZhuXiuRen']").css("visibility", "visible");
            } else {
                $("span[name='sZhuXiuRen']").css("visibility", "hidden");
            }
        }

  </script>


<body>
    <form name="form1" method="post" action="saleAfter_WeiXiuJieSuanPrint.aspx?strInfo=&amp;print=print&amp;saleAfterGuid=8a830b31-41e3-4383-bfc0-65c0fc8f325e&amp;printType=1&amp;d=Mon+Jan+05+2015+15%3a50%3a45+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__LASTFOCUS" id="__LASTFOCUS" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMTAyOTM0OTA3D2QWAgIBD2QWCGYPFgIeB1Zpc2libGVnZAIBD2QWAmYPZBYCZg9kFgICAQ8QZGQWAWZkAgIPFgIeC18hSXRlbUNvdW50AgMWBgIBD2QWAmYPFQcBMQAd5YmN5Yiu5rC05Zmo5qmh6IO25p2hKOS4pOS+pykM5Y6C5a625L+d5L+uBDAuMDAS5LiA6Iis57u05L+u5LiA57uEBuadjuagi2QCAg9kFgJmDxUHATIAEuabtOaNouWJjeWIuei9puebmAzljoLlrrbkv53kv64EMC4wMBLkuIDoiKznu7Tkv67kuIDnu4QG5p2O5qCLZAIDD2QWAmYPFQcBMwAQNzAsMDAwIEtNIOS/neWFuwzljoLlrrbkv53kv64EMC4wMBLkuIDoiKznu7Tkv67kuIDnu4QG5p2O5qCLZAIDDxYCHwECCxYWAgEPZBYCZg8VCAExBENTWUgV6L2m6Lqr5ram5ruR5Zub5ZCI5LiAAAzljoLlrrbkv53kv64EMS4wMAQwLjAwBDAuMDBkAgIPZBYCZg8VCAEyCjA0MTUyMzEwODAb5py65rK55ruk5riF5Zmo5ruk6Iqv57uE5Lu2AAzljoLlrrbkv53kv64EMS4wMAQwLjAwBDAuMDBkAgMPZBYCZg8VCAEzCjA4ODA4ODAwODAh6Zu35YWL6JCo5pav57qv54mM6L2m56qX5riF5rSX5rayAAzljoLlrrbkv53kv64EMS4wMAQwLjAwBDAuMDBkAgQPZBYCZg8VCAE0CjA4ODEzODAwMjAS5Za35rK55Zi05riF5YeA5YmCBuWFqOmDqAzljoLlrrbkv53kv64EMS4wMAQwLjAwBDAuMDBkAgUPZBYCZg8VCAE1CjA4ODgwODM0MDMW6auY57qn5py65rK577yINVczMO+8iQQwLjFMDOWOguWutuS/neS/rgU2My4wMAQwLjAwBDAuMDBkAgYPZBYCZg8VCAE2Cjg3MTM5MzAxMDAV56m65rCU57uG5ruk5Zmo5ruk6IqvAAzljoLlrrbkv53kv64EMS4wMAQwLjAwBDAuMDBkAgcPZBYCZg8VCAE3CjkwNDMwMTIwMzEc6KGs5Z6rKOeUqOS6juayueW6leWjs+aOkuaUvgAM5Y6C5a625L+d5L+uBDEuMDAEMC4wMAQwLjAwZAIID2QWAmYPFQgBOAo4NTIxNDMzMTgwGOWPs+S+p+WIruawtOWZqOapoeiDtuadoQAM5Y6C5a625L+d5L+uBDEuMDAEMC4wMAQwLjAwZAIJD2QWAmYPFQgBOQo4NTIxNDY4MDIwGOW3puS+p+WIruawtOWZqOapoeiDtuadoQAM5Y6C5a625L+d5L+uBDEuMDAEMC4wMAQwLjAwZAIKD2QWAmYPFQgCMTAKNDM1MTIzMDM3MAzliY3liLbliqjnm5gG5YWo6YOoDOWOguWutuS/neS/rgQxLjAwBDAuMDAEMC4wMGQCCw9kFgJmDxUIAjExCjQzNTE2MzAwNjAM5YmN5Yi25Yqo55uYBuWFqOmDqAzljoLlrrbkv53kv64EMS4wMAQwLjAwBDAuMDBkZKoezx2v7+7LTYhkPM42THgZIHhJ" />
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


<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="ECF4F000" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWBwLJhuu/BALl++7EBQK87en2BAK2uY2gCAK51qfOBAK41qfOBAK71qfOBJ7zYEst9/DOIbJGXX85qYvGXFMK" />
</div>
     <table id="tbPrint" border="0" class="Noprint">
	<tr>
		<td>
        <input type="button" value="打印" onClick="javascript:show();" />
   <input name="txtInfo" type="text" id="txtInfo" style="display:none;" />
         <input type="button" value="导出" onClick="showExcelInfo();"   />
<input type="checkbox" onClick="checkPrintZhuXiuRen(this)" checked="true" />打印主修人
         <a id="lnkExcel" href="javascript:__doPostBack('lnkExcel','')"></a> 
        </td>
	</tr>
</table>

       
       <table id="tbSample" border="0" class="Noprint">
	<tr>
		<td>
         <select name="ddlPrintSort" onChange="javascript:setTimeout('__doPostBack(\'ddlPrintSort\',\'\')', 0)" id="ddlPrintSort">
			<option selected="selected" value="1">正常维修</option>
			<option value="2">厂家保修</option>
			<option value="3">保险</option>

		</select>
        </td>
	</tr>
</table>

     



       <table border="0" cellpadding="0" cellspacing="0" width="730px" style="margin-left:15px;" >
        <tr>
          <td   align="center" style="font-size:16px;height:23px;font-weight:bold;vertical-align:top;text-align:center;">深圳深业雷克萨斯汽车销售服务有限公司维修结算单
          </td>
         </tr>
         <tr>
         <td>
           <table border="0" cellpadding="0" cellspacing="0" width="100%"  style="margin-left:10px;margin-right:10px;border-collapse:collapse;" >
            <tr>
            <td width="150px" style="border:2px solid black;padding-left:2px;font-size:14px;">服务顾问:&nbsp;陈秋波</td>
            <td  width="160px"  style="border:2px solid black;padding-left:3px;font-size:14px;">客户确认:</td>
            <td width="200px"></td>
            <td  height="60px" style="font-size:12px;" >工单号:&nbsp;JDD20150105017 <br />车牌号码:&nbsp;粤BY5X03<br />实际单号:&nbsp;SL0X15013624</td>

            </tr>
           </table>

         </td>
         </tr>
         <tr>
         <td style="height:7px;"></td>
         </tr>
         <tr>
         <td>
         <!--客户信息 start-->
           <table border="0" cellpadding="0" cellspacing="0" width="100%" style="border:2px solid black;padding-left:2px;">
           <tr>
           <td rowspan="2" style="border-bottom:1px solid black;border-right:1px dotted black;">客户</td>
           <td style="border-bottom:1px dotted black;border-right:1px dotted black;">客户名称:</td>
           <td colspan="2"  style="border-bottom:1px dotted black;border-right:1px dotted black;">&nbsp;张健超</td>
           <td  style="border-bottom:1px dotted black;border-right:1px dotted black;">联系人:</td>
           <td colspan="2"  style="border-bottom:1px dotted black;border-right:1px dotted black;">&nbsp;张健超</td>
           <td  style="border-bottom:1px dotted black;border-right:1px dotted black;">联系电话:</td>
           <td  style="border-bottom:1px dotted black;">&nbsp;15915429403</td>
           </tr>
           <tr>
           <td  style="border-bottom:1px solid black;border-right:1px dotted black;">会员号:</td>
           <td  style="border-bottom:1px solid black;border-right:1px dotted black;" >&nbsp;23016952</td>
           <td  style="border-bottom:1px solid black;border-right:1px dotted black;">会员级别:</td>
           <td  style="border-bottom:1px solid black;border-right:1px dotted black;">&nbsp;阳光会员</td>
           <td  style="border-bottom:1px solid black;border-right:1px dotted black;">客户地址:</td>
           <td colspan="3"  style="border-bottom:1px solid black;">&nbsp;九围</td>
           </tr>
           <tr>
           <td rowspan="2"  style="border-right:1px dotted black;">车辆</td>
           <td style="border-bottom:1px dotted black;border-right:1px dotted black;">车型:</td>
           <td style="border-bottom:1px dotted black;border-right:1px dotted black;">&nbsp;GS350&nbsp;GRL10L-BETQH</td>
           <td style="border-bottom:1px dotted black;border-right:1px dotted black;">车架号:</td>
           <td colspan="5" style="border-bottom:1px dotted black;">&nbsp;JTHBE1BL4C5009040</td>
           </tr>
           <tr>
           <td  style="border-bottom:1px dotted black;border-right:1px dotted black;">进厂里程:</td>
           <td  style="border-bottom:1px dotted black;border-right:1px dotted black;">&nbsp;57643公里</td>
           <td  style="border-bottom:1px dotted black;border-right:1px dotted black;">发动机:</td>
           <td colspan="3"  style="border-bottom:1px dotted black;border-right:1px dotted black;">&nbsp;2GR 8756496</td>
           <td  style="border-bottom:1px dotted black;border-right:1px dotted black;">打印类别:</td>
           <td  style="border-bottom:1px dotted black;">一般维修</td>
           </tr>
           <tr>
           <td style="border-right:1px dotted black;">故障现象:</td>
           <td colspan="7" >&nbsp;
           
           </td>
           </tr>
           </table>
         <!--客户信息 end-->
         </td>
         </tr>
         <tr>
         <td style="height:5px;"></td>
         </tr>

         <tr>
         <td>
         <!--维修项目 start-->
          <table border="0"  id="weiXiuList" style="border:2px solid black;width:100%;" >
            
           <tr>
           <td>序号</td>
           <td>维修项目编号</td>
           <td>维修项目</td>
           <td>帐套类别</td>
           <td>工时费</td>
           <td>维修班组</td>
           </tr>             
             
                 <tr>
                    <td>&nbsp;1</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;前刮水器橡胶条(两侧)</td>
                    <td>&nbsp;厂家保修</td>
                    <td>&nbsp;0.00</td>
                    <td>&nbsp;一般维修一组<span name='sZhuXiuRen'>[李栋]</span></td>
                  </tr> 
             
                 <tr>
                    <td>&nbsp;2</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;更换前刹车盘</td>
                    <td>&nbsp;厂家保修</td>
                    <td>&nbsp;0.00</td>
                    <td>&nbsp;一般维修一组<span name='sZhuXiuRen'>[李栋]</span></td>
                  </tr> 
             
                 <tr>
                    <td>&nbsp;3</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;70,000 KM 保养</td>
                    <td>&nbsp;厂家保修</td>
                    <td>&nbsp;0.00</td>
                    <td>&nbsp;一般维修一组<span name='sZhuXiuRen'>[李栋]</span></td>
                  </tr> 
             
              <tr>
                <td>工时</td>
                <td colspan="5">
                  合计:
                  优惠:
                  实收工时费:
                  工时券:0                  
                </td>
                </tr>
              
          </table>
         <!--维修项目 end-->
         </td>
         </tr>

         <tr>
         <td style="height:5px;"></td>
         </tr>

        <tr>
        <td>
         <!--维修物料 start-->
          <table border="0"  id="wuLiaoList" style="border:2px solid black;width:100%;" >
          
           <tr>
          <td>序号</td>
          <td>配件编号</td>
          <td>配件名称</td>
          <td>单位</td>
          <td>帐套类别</td>
          <td>数量</td>
          <td>单价</td>
          <td>金额</td>
          </tr>
            
           
            <tr>
          <td>1</td>
          <td>&nbsp;CSYH</td>
          <td>&nbsp;车身润滑四合一</td>
          <td>&nbsp;</td>
          <td>&nbsp;厂家保修</td>
          <td>&nbsp;1.00</td>
          <td>&nbsp;0.00</td>
          <td>&nbsp;0.00</td>
          </tr>
          
          
            <tr>
          <td>2</td>
          <td>&nbsp;0415231080</td>
          <td>&nbsp;机油滤清器滤芯组件</td>
          <td>&nbsp;</td>
          <td>&nbsp;厂家保修</td>
          <td>&nbsp;1.00</td>
          <td>&nbsp;0.00</td>
          <td>&nbsp;0.00</td>
          </tr>
          
          
            <tr>
          <td>3</td>
          <td>&nbsp;0880880080</td>
          <td>&nbsp;雷克萨斯纯牌车窗清洗液</td>
          <td>&nbsp;</td>
          <td>&nbsp;厂家保修</td>
          <td>&nbsp;1.00</td>
          <td>&nbsp;0.00</td>
          <td>&nbsp;0.00</td>
          </tr>
          
          
            <tr>
          <td>4</td>
          <td>&nbsp;0881380020</td>
          <td>&nbsp;喷油嘴清净剂</td>
          <td>&nbsp;全部</td>
          <td>&nbsp;厂家保修</td>
          <td>&nbsp;1.00</td>
          <td>&nbsp;0.00</td>
          <td>&nbsp;0.00</td>
          </tr>
          
          
            <tr>
          <td>5</td>
          <td>&nbsp;0888083403</td>
          <td>&nbsp;高级机油（5W30）</td>
          <td>&nbsp;0.1L</td>
          <td>&nbsp;厂家保修</td>
          <td>&nbsp;63.00</td>
          <td>&nbsp;0.00</td>
          <td>&nbsp;0.00</td>
          </tr>
          
          
            <tr>
          <td>6</td>
          <td>&nbsp;8713930100</td>
          <td>&nbsp;空气细滤器滤芯</td>
          <td>&nbsp;</td>
          <td>&nbsp;厂家保修</td>
          <td>&nbsp;1.00</td>
          <td>&nbsp;0.00</td>
          <td>&nbsp;0.00</td>
          </tr>
          
          
            <tr>
          <td>7</td>
          <td>&nbsp;9043012031</td>
          <td>&nbsp;衬垫(用于油底壳排放</td>
          <td>&nbsp;</td>
          <td>&nbsp;厂家保修</td>
          <td>&nbsp;1.00</td>
          <td>&nbsp;0.00</td>
          <td>&nbsp;0.00</td>
          </tr>
          
          
            <tr>
          <td>8</td>
          <td>&nbsp;8521433180</td>
          <td>&nbsp;右侧刮水器橡胶条</td>
          <td>&nbsp;</td>
          <td>&nbsp;厂家保修</td>
          <td>&nbsp;1.00</td>
          <td>&nbsp;0.00</td>
          <td>&nbsp;0.00</td>
          </tr>
          
          
            <tr>
          <td>9</td>
          <td>&nbsp;8521468020</td>
          <td>&nbsp;左侧刮水器橡胶条</td>
          <td>&nbsp;</td>
          <td>&nbsp;厂家保修</td>
          <td>&nbsp;1.00</td>
          <td>&nbsp;0.00</td>
          <td>&nbsp;0.00</td>
          </tr>
          
          
            <tr>
          <td>10</td>
          <td>&nbsp;4351230370</td>
          <td>&nbsp;前制动盘</td>
          <td>&nbsp;全部</td>
          <td>&nbsp;厂家保修</td>
          <td>&nbsp;1.00</td>
          <td>&nbsp;0.00</td>
          <td>&nbsp;0.00</td>
          </tr>
          
          
            <tr>
          <td>11</td>
          <td>&nbsp;4351630060</td>
          <td>&nbsp;前制动盘</td>
          <td>&nbsp;全部</td>
          <td>&nbsp;厂家保修</td>
          <td>&nbsp;1.00</td>
          <td>&nbsp;0.00</td>
          <td>&nbsp;0.00</td>
          </tr>
          
          
          <tr>
          <td>配件</td>
          <td colspan="7">
           合计:
                  优惠:
                  实收材料费: 自费金额:0.00
                  材料券:0  
          </td>
          </tr>
          
          </table>
         <!--维修物料 end-->        
        </td>
        </tr>
        <tr>
         <td style="height:5px;"></td>
        </tr>
        <tr>
        <td>
        <!--费用合计 start-->
        <table border="2" id="billHuiZong"  style="border:2px solid black;width:100%;border-collapse:collapse;" >
         <tr>
         <td rowspan="4" >
         单<br />据<br />汇<br />总<br />
         </td>
         <td>车主自付</td><td>0.00</td>
         <td>月结</td><td>0.00</td>
         </tr>
        <tr>
         <td>保险自付</td><td>0.00</td>
         <td>内结</td><td>0.00</td>
         </tr>
        <tr>
         <td>厂家保修</td><td>5142.40</td>
         <td>自费补差价</td><td>0.00</td>
         </tr>
         <tr>
         <td>保险索赔</td><td>0.00</td>
         <td style="font-size:14px;font-weight:bold;">折后实收金额</td><td style="font-size:16px;font-weight:bold;">0.00</td>
         </tr>
        </table>
        <!--费用合计 end-->
        </td>
        </tr>

        <tr>
        <td>
         <!--下次保养提醒 start-->
          <span style='font-weight:bold;font-size:15px;padding-top:3px;'>下次保养里程:65643 &nbsp; 下次保养日期:2015/07/05</span>
         <!--下次保养提醒 end-->
        </td>
        </tr>
        <tr>
        <td>
         <!--接待提醒 start-->
          <span style='font-weight:bold;font-size:15px;padding-top:3px;'>接待提醒:</span>
         <!--接待提醒 end-->
        </td>
        </tr>
        <tr>
        <td>
         <!--结算提醒 start-->
          <span  style='font-weight:bold;font-size:15px;padding-top:3px;'>结算提醒:</span>
         <!--结算提醒 end-->
        </td>
        </tr>
        <tr>
        <td>
        <!--各时间点 start-->
        
        <!--各时间点 end-->
        </td>
        </tr>

        <tr>
        <td>
        <!--各关键人 start-->
        
        <!--各关键人 end-->
        </td>
        </tr>
        <tr>
        <td>
        <!--公司地址 start-->
        <table border='0' style='font-weight:bold;font-size:13px;padding-top:3px;'><td  style='width:400px;' colspan='5'>公司地址:深圳市宝安区西乡大道34号(西乡大道与前进二路交汇处)<td  style='width:150px;'  colspan='2'>电话:0755-23938888<td  style='width:150px;'  colspan='2'>传真:0755-27755230</table>
        <!--公司地址 end-->
        </td>
        </tr>
        <tr>
        <td>
           <!--备注信息 start-->
           <table border="0" >
           <tr>
           <td style="width:500px;" align="left" >
             <table border="0">
             <tr>
             <td rowspan="5" valign="top">注:</td>
             <td>1、本人同意按贵公司维修结算单上所列项目支付需要更换的零件费及修理费。</td>
             </tr>
             <tr><td>2、理赔及索赔项目以保险公司或汽车厂家的最终核价为准。</td></tr>
             <tr><td>3、为了确保服务品质，我们会在三天内进行电话回访 -上午(&nbsp;)下午(&nbsp;)。</td></tr>
             <tr><td>4、如果您被厂家抽中做面访或电话调查，请与我们联系以便帮你甄别真伪及给予我们10分评价。</td></tr>
             <tr><td>5、免费办理阳光会员卡可享受更多优惠折扣。</td></tr>
             </table>
           </td>
           <td>
           </td>
           <td style="padding-left:10px;"  align="left">
             <!--顾客满意 start-->
              <table border="1" style="border-collapse:collapse;border:1px solid gray;width:100px;font-weight:bold;font-size:10px;text-align:center;" >
              <tr>
              <td colspan="2">顾客满意第一</td>
              </tr>
              <tr>
              <td>是</td><td>否</td>
              </tr>  
              </table>
             <!--顾客满意 end-->
           </td>
           </tr>
           </table>
           <!--备注信息 end-->
        </td>
        </tr>

        <tr>
        <td align="right">
        打印人:陈荣华&nbsp;打印时间:2015-01-05 15:46:29
        </td>
        </tr>

       </table> 
     

      <div style="color:Blue;font-size:85px;font-style:oblique;position:absolute;left:50px;top:50px;">
        
      </div>

    </form>
</body>
</html>