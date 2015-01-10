<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"><title>
	车辆查询
</title>
    <base target="_self" />
    <style type="text/css">
        html, body
        {
            overflow: hidden;
        }
    </style>
 <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" /><script src="../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../JS/Frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../JS/Frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../JS/common.js?v=2dfbab1f71764dc182eb87e4e0aad2fc" type="text/javascript"></script><link href="../style/common.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<script language="javascript" type="text/javascript">
    var jsonstr = '{"total":0,"rows":[{"id":"请重新输入查询条件"}]}'; // '{"total":1,"rows":[{"OrderGuid":"dfgddfgd-asfdasdas-zxcvzxcv-qwrwqer","CustName":"王大牛","CarModel":"卡罗拉","CarName":"自动波豪华版","CarColor":"银色"}]}'; //
    $(function () {
        $('#dg3').datagrid({
            onDblClickRow: function (rowIndex, rowdata) {
              if (!$.browser.msie && $.browser.version != '11.0') {
                window.opener.document.getElementById("hidCarId").value =rowdata.Car_ID;
                
                  window.opener.__doPostBack('lnkbtnPeiChe','');
                  CloseWindow();
              }else{
                  
                 window.returnValue = rowdata;
                CloseWindow();
              }
            },
           onClickRow: function (rowIndex, rowdata) {
              if (!$.browser.msie && $.browser.version != '11.0') {
                window.opener.document.getElementById("hidCarId").value =rowdata.Car_ID;
                
                  window.opener.__doPostBack('lnkbtnPeiChe','');
                  CloseWindow();
              }else{
              window.returnValue = rowdata;
                CloseWindow();
                  

              }
            }

        }).datagrid('loadData', $.parseJSON(jsonstr));
    });
      
</script>
<body>
    <form name="form1" method="post" action="CarStockQuery.aspx?CheXingDaiMa=R5A1%2fGC1&amp;Color=%u94c2%u9752%u94dc&amp;CarStatus=4&amp;OrderID=bb48b67f-fabd-44b6-92ea-5e424a1c79b4&amp;CompId=" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__LASTFOCUS" id="__LASTFOCUS" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTMzMDM1ODc4MQ9kFgICAQ9kFgICAQ8QZGQWAWZkZLEhLyFwAPnJcVnb4bo/cspYzqYG" />
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


    <div style="height: 24px; width: 700px;  margin: 5px;">
        <table style="float: right;">
            <tr>
                <td style="width: 150px;">
                    <span id="rbdlYZChange"><input id="rbdlYZChange_0" type="radio" name="rbdlYZChange" value="0" checked="checked" /><label for="rbdlYZChange_0">非预装车</label><input id="rbdlYZChange_1" type="radio" name="rbdlYZChange" value="1" onclick="javascript:setTimeout('__doPostBack(\'rbdlYZChange$1\',\'\')', 0)" /><label for="rbdlYZChange_1">预装车</label></span>
                </td>
                <td>
                    SFX
                </td>
                <td>
                    <input name="txtSFX" type="text" maxlength="10" id="txtSFX" style="width:80px;" />
                </td>
                <td>
                    排量
                </td>
                <td>
                    <input name="txtPaiLiang" type="text" maxlength="10" id="txtPaiLiang" style="width:80px;" />
                </td>
                <td>
                    车内饰
                </td>
                <td>
                    <input name="txtCheNeiShi" type="text" maxlength="10" id="txtCheNeiShi" style="width:80px;" />
                </td>
                <td>
                    <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
                </td>
            </tr>
        </table>
    </div>
  
        <table id="dg3"    class="easyui-datagrid" style="width:700px; height:460px;" data-options="
				rownumbers:true,
				singleSelect:true,
				autoRowHeight:false,
                columns:[[
               
                {field:'ChangShang',title:'厂商',width:60},
                {field:'CheXi',title:'车系',width:100},
                {field:'CheXing',title:'车型',width:100},
                {field:'CheXingDaiMa',title:'车型代码',width:60},
                {field:'CarColor',title:'车身颜色',width:100},
                {field:'CarNeiShi',title:'车内饰',width:100},
                {field:'SFX',title:'SFX',width:100},
               {field:'CarRuKu_CheJiaHao',title:'车架号',width:100},
               {field:'CarRuKu_CheXingDaiMa',title:'车型代码',width:100},
               {field:'CarRuKu_CheYaoShi',title:'车钥匙',width:100},
               {field:'CarRuKu_FaDongJiHao',title:'发动机号',width:100},
               {field:'CarRuKu_CheLiangBianHao',title:'车辆编号',width:100},
               
                {field:'CarPaiLiang',title:'排量',width:100}
               ] ],
				pagination:true,
                idfield:'Car_ID',
                remoteSort:false,
                pageList:[10,15,20,30,40,50,100],
                pageNumber:1,
				pageSize:15">
        </table>
    
    <input name="hidCarIds" type="hidden" id="hidCarIds" />
    
    <script language="javascript" type="text/javascript">
        function CloseWindow() {
            window.opener = null;
            window.open("", "_self");

            window.close();
        }
    </script>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="ABF2CD79" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWCQLr8tPBCQLOkt+9AQLRkt+9AQLe/fXTDQKu++6KBAL75++ADgKXgNS4DwKpi4nBBQKyu8XsB4p5eXkP3/GMYJjdvtFnyjRsnhHS" />
</div></form>
</body>
</html>