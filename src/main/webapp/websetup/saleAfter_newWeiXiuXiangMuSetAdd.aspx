
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	维修项目添加
</title>
    <style type="text/css" >
      .change
      {
        font-size:12px;
		font-weight:bold;
		text-align:center;
		border:1px solid black;
		margin-bottom:2px;
		margin-top:1px;
		margin-right:2px;
		height:30px;
		width:180px; 
		padding-top:5px;

          }
    </style>
 <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../JS/Frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../JS/Frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../JS/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<base target="_self" />
<body>
    <form name="form1" method="post" action="saleAfter_newWeiXiuXiangMuSetAdd.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTk3NzA4MTk2M2QYAQUeX19Db250cm9sc1JlcXVpcmVQb3N0QmFja0tleV9fFgEFBmNoa0FsbL8/+FFgx7EPLsud34m+aog3xcsE" />
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


      <div style="position:absolute;top:3px;left:50px">
        <table border="0" style="width:100%;border-bottom:1px solid gray;padding-right:5px;">
        <tr><td class="titlebg"><span>维修设置</span>
            <span class="titleSpan">(维修项目设置)</span> 
            </td><td align="right">
            </td></tr>
         </table> 

      <table border="0" cellpadding="0" cellspacing="0" width="400px">
       <tr>
       <td  style="height:35px;">项目代码:</td>
       <td>
        <input name="txtWeiXiuXiangMuDaiMa" type="text" maxlength="30" id="txtWeiXiuXiangMuDaiMa" style="width:200px;" />
       </td>
       </tr>
        
       <tr>
       <td  style="height:35px;">维修内容:</td>
       <td><input name="txtWeiXiuXiangMuContent" type="text" maxlength="200" id="txtWeiXiuXiangMuContent" style="width:200px;" /> </td>
       </tr>
       
       <tr>
       <td>
       工时:</td><td><input name="txtGongShi" type="text" id="txtGongShi" />
       <input name="txtGongShiList" type="hidden" id="txtGongShiList" />
        </td>
       </tr> 
       <tr style="height:30px;">
       <td>应用全部:</td>
       <td>
        <input name="chkAll" type="checkbox" id="chkAll" onClick="chk(this);" />
       </td>
       </tr>

       <tr>
       <td colspan="2" style="text-align:center;">
        <a onclick="return saveCheck();" id="lnkSave" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSave','')">保存</a>
        <a onclick="return closeWin();" id="lnkCancel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkCancel','')">取消</a>
        <a onclick="return cheXi();" id="lnkCheXiSheZhi" class="easyui-linkbutton" href="javascript:__doPostBack('lnkCheXiSheZhi','')">车系设置</a>
       </td>
       </tr>
      </table>
       <br />
    <!--下属车系 start-->
    <div style="width:800px;" id="divGongShiList">

      <!--
      <div style="float:left;" class="change">卡罗拉:<input type="text" value ="10" style="width:60px;" /></div>
      -->
      

    </div>
    <!--下属车系 end-->

    </div>
    
   

    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="3B9128D2" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWCQLF9Y7jAQLDvZOoDQL+sbWiBgLCxOjCCwKStK2/AgLS15eUAQKj7e2BCAKmtLTPAQLZldv0Cf5EQWAl4I9U7m2ALzS13UDSPJVV" />
</div></form>
    <script language="javascript" type="text/javascript" >

        var btnFlag = "0";
        var err ="";
        function saveCheck() {
            
            if(btnFlag =="1"){return false;}else{btnFlag ="1";}
            err ="";
            var gongShiList="";
            if ($("#txtWeiXiuXiangMuDaiMa").val() == "") {err ="维修项目代码不能为空!\n"; }
            if ($("#txtWeiXiuXiangMuContent").val() == "") { err += "维修项目内容不能为空!\n"; }
            
            if (err != "") { alert(err);btnFlag = "0";return false;}

            var obj = document.getElementsByName("gongShi");
            for (var i = 0; i < obj.length; i++) {
                if($("#"+obj[i].id).val() !=""){
                  gongShiList +=obj[i].id+","+$("#"+obj[i].id).val()+"|";
                }
            }

          $("#txtGongShiList").val(gongShiList);

 
            return true;
        }


        function chk(obj) {
            if (obj.checked) {
                $("#divGongShiList").css("display", "none");
            } else {
                $("#divGongShiList").css("display", "block");
            }
        }


        function closeWin() {
            window.opener = null;
            window.close();
            return false;
        }

        function cheXi() {
            location.href = "saleAfter_newWeiXiuXiangMuCheXiList.aspx";
            return false;
        }

    </script>





</body>
</html>