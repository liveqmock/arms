<html >
<head><title>

</title>
      <base target="_self" />
       <style type="text/css">
        html, body
        {
            overflow: hidden;
        }
        .cssHide{ display:none;}
        
.tables
{
	
	margin: 5px;
	border: 1px solid #CCCCCC;
	border-collapse: collapse;
}
        .tables td
{
	border-right-style: solid;
	border-right-width: 1px;
	border-right-color: #CCCCCC;
	line-height: 22px;
	padding-right: 5px;
	padding-left: 5px;
}

.tables .input
{
	border-style: none;
	width: 98%;
}

.selectedRowStyle
{
	background-position: center top;
	font-weight: bold;
	background-color: #FFE3B9;
}

.alternatingRowStyle
{
	background-color: #f2f7fe;
}
    </style>
 <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
 <script language="javascript" type="text/javascript">
     $(function () {
         $(".linkbutton").linkbutton();
     });

     var rowSelected = "";
     var colorOld = "";
     function changeColor(rowCurrent) {
         if (rowSelected != "" && rowSelected != null) {
             rowSelected.style.backgroundColor = colorOld;
         }
         colorOld = rowCurrent.style.backgroundColor;
         rowCurrent.style.backgroundColor = "Silver";
         rowSelected = rowCurrent;

  
     }
     function SelectRow(rowCurrent) {
 
         rowSelected = rowCurrent;
         //alert(rowCurrent.innerHTML);
         //  alert(document.getElementById('givCarInfos').rows[0].cells[0].value);
         var realChild = [];
         for(var i = 0;i < rowCurrent.childNodes.length; i++){
             if (rowCurrent.childNodes[i].nodeType == 1) {
                 realChild.push(rowCurrent.childNodes[i]);
             }
}


         var chePai = realChild[2].innerText;

         var lianXiPerson = realChild[3].innerText;
         var tel = realChild[4].innerText;
         var mobile = realChild[5].innerText;
         var cusId = realChild[0].innerText;
         var customSort = realChild[8].innerText;
         var weiXiuCiShu = realChild[11].innerText;
         var huiYuanSort = realChild[9].innerText;
         var vehicleId = realChild[12].innerText;
         var navigatorName = "Microsoft Internet Explorer";
         if (navigator.appName == navigatorName) {
             window.dialogArguments.carReturn(chePai, lianXiPerson, tel, mobile, cusId,customSort,weiXiuCiShu,huiYuanSort,vehicleId);
         }
         else {
             window.parent.opener.carReturn(chePai, lianXiPerson, tel, mobile, cusId,customSort,weiXiuCiShu,huiYuanSort,vehicleId); //用这个才能在翻页后取得父方法的值
         }
         window.returnValue = "";
         window.opener = null;
            window.close();
     }
     

     function pageGo() {
         var myReg = /^\d+$/;
         var pageNum = document.getElementById("txtTargetPage").value;
         if (!myReg.test(pageNum)) {
             alert("数字格式无效!");
             document.getElementById("txtTargetPage").value = "";
             document.getElementById("txtTargetPage").focus();
             return false;
         }
         var pageNumAll = document.getElementById("lblPageCount").innerHTML;
         if (eval(pageNumAll) < eval(pageNum)) {
             alert("页面超出范围！");
             document.getElementById("txtTargetPage").value = "";
             document.getElementById("txtTargetPage").focus();
             return false;
         }
         if (pageNum == "0") {
             alert("不能输入0！");
             document.getElementById("txtTargetPage").value = "";
             document.getElementById("txtTargetPage").focus();
             return false;
         }
         return true;
     }

     //上一页
     function pageUp() {
         var pageNum = document.getElementById("lblCurPage").innerHTML;
         if (pageNum == "1") {
             alert("当前为第一页！");
             return false;
         }
         return true;
     }
     function CloseWindow() {

         window.opener = null;
         window.open("", "_self");
         window.close();
     }
     //下一页
     function pageDown() {
         var pageNumAll = document.getElementById("lblPageCount").innerHTML;
         var pageNum = document.getElementById("lblCurPage").innerHTML;
         if (eval(pageNumAll) < eval(parseInt(pageNum) + 1)) {
             alert("当前为最后一页！");
             return false;
         }
         return true;
     }
    </script>
<body>
    <form name="form1" method="post" action="ChePaiSelect.aspx?d=Fri+Jan+09+2015+11%3a05%3a25+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTY3ODk5MTQ5Nw9kFgICAw9kFgICCw88KwANAGQYAQULZ2l2Q2FySW5mb3MPZ2SdpqJj/4HWsmnBgh9KsNGEPQ3tAw==" />
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


      <div region="north" border="false" style="overflow: hidden; height: 40px;">
      <table border="0" style="width:840px;border-bottom:1px solid #b8b8b8; margin:15px"">
        <tr><td class="titlebg"><span>车辆查询</span>
         </td><td align="right">
           </td></tr>
         </table> 
        

    </div>
    <!--查询条件start-->
    <div>
    <table border="0" >
    <tr>
    <td>车牌号码:</td>
    <td><input name="txtChePaiHaoMa" type="text" maxlength="14" id="txtChePaiHaoMa" /> </td>
    <td>联系人:</td>
    <td><input name="txtLianXiRenName" type="text" maxlength="50" id="txtLianXiRenName" /> </td>
    <td>电话:</td>
    <td><input name="txtLianXiDianHua" type="text" maxlength="14" id="txtLianXiDianHua" /> </td>
    <td>手机号码:</td>
    <td><input name="txtShouJiHao" type="text" value="13" maxlength="14" id="txtShouJiHao" /> </td> 
    <td><a id="lnkSearch" class="linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a> </td>
    </tr>
    </table>
    </div>
    <!--查询条件end-->

    <div region="center" border="false" style="padding: 10px; overflow: hidden;">
        <div id="center-main" style="border: 1px solid #e0ecff; overflow:auto; text-align:center;">

            <div>

</div> 
        </div>
          </div>
<div region="south" border="false" style="overflow: hidden; height: 40px;">
        <div class="Toolbar"><table width="100%" cellpadding="0" cellspacing="0"><tr><td>
        <table height="40px" align="right" cellpadding="2" cellspacing="2">
            <tr>
                <td>共有<span id="lblRowsCount"></span>
                    条记录，共<span id="lblPageCount"></span>
                    页 当前第<span id="lblCurPage"></span>
                    页，跳到<input name="txtTargetPage" type="text" value="1" id="txtTargetPage" class="QTxtCss" />
                    页<input type="submit" name="btnTurnPage" value="跳转" onclick="return pageGo();" id="btnTurnPage" />
                    <a onclick="return pageUp();" id="lnkbtnPageUp" href="javascript:__doPostBack('lnkbtnPageUp','')">上一页</a>
                    <a onclick="return pageDown();" id="lnkbtnPageDown" href="javascript:__doPostBack('lnkbtnPageDown','')">下一页</a>
                </td>
       
              
                <td><a id="lnkbtnRefresh" class="linkbutton" href="javascript:__doPostBack('lnkbtnRefresh','')">刷 新</a></td>
                <td><a onclick="CloseWindow();" id="lnkbtnClose" class="linkbutton" href="javascript:__doPostBack('lnkbtnClose','')">关 闭</a></td>
         
            </tr>
        </table>
        </td></tr></table></div>
    </div>
    <div>
    
    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="745D0AB9" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWDALdp8LQAwKUyP1yArD59cMPAvzMqdsIAt3d8okFAqmLicEFAoSf9+gLAv+dlZkOAteCw/UCAo6gwbgIAt/l55EHAoS46fgE1lAFiBa97Knlr7cbTy+oX+VRnGs=" />
</div></form>
</body>
</html>