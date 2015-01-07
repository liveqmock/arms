 
<html>
<head><title>
	寻呼发布
</title>

    <script language="javascript" type="text/javascript" >

        function thisClose() {
            try {
                parWinClose();
            } catch (e) {
                window.opener = null;
                window.close();
            }
        }

    </script>

 <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head> 
<base target="_self" />
<body style="margin:2px">
    <form name="form1" method="post" action="Call.aspx?d=Tue+Jan+06+2015+08%3a33%3a29+GMT+0800" id="form1">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTEzNDM5NTMxOThkZL/Cj/Z+gWfgjmDih+LwUW8gVHGx" />
</div>


   <!--按钮导航区域 start-->
    <div style="width:780px;border-bottom:1px solid #c7c8c9;">
        <table border="0" style="width:600px;height:30px;margin-top:1px;">
        <tr>
        <td style="display:block;width:200px;"></td>
        <td id="Td1" style="width:100px;cursor:pointer;text-align:center;background-color:Gray;color:White;"  >信息发布</td>
        <td id="tab1" style="width:100px;cursor:pointer;text-align:center;"  onclick="centerShow()">待阅信息</td>
        <td id="tab2" style="width:100px;cursor:pointer;text-align:center;" onClick="sendShow()">已发信息</td>
        <td id="tab3" style="width:100px;cursor:pointer;text-align:center;" onClick="receiveShow()">已收信息</td>
        <td id="Td2" style="width:100px;cursor:pointer;text-align:center;"  onclick="thisClose();" >关闭</td>        
        </tr>
       </table>
     </div>
    <!--按钮导航区域 end-->

    <div  style="text-align:right;"> 
     <a   class="easyui-linkbutton" onClick="return saveCheck();"  >发送</a> 
     <a   class="easyui-linkbutton"   style="display:none;"   >定时发送</a>
      <input type="submit" name="btnSend" value="" id="btnSend" style="display:none;" />
    </div> 

     
    <div>
    <table border="0"  width="100%">
    <tr><td valign="top" width="50px">主送:</td><td>
    <input name="hidToUserId" type="hidden" id="hidToUserId" />
    <input name="a" type="text" id="a" style="width:100%" onClick="choiceUser(1)" /></td></tr>
    <tr><td valign="top">抄送:</td><td>
    <input name="hidCCUserId" type="hidden" id="hidCCUserId" />
    <input type="text"   id="b" style="width:100%" onclick=choiceUser(2) /></td></tr>
    <tr style="display:none;"><td valign="top">密送:</td> <td>
    <input name="hidMCCUserId" type="hidden" id="hidMCCUserId" />
    <input type="text"   id="c" style="width:100%" onclick=choiceUser(3) /></td></tr>
    <tr><td valign="top">正文:</td> <td><textarea name="txtRemarks" id="txtRemarks" cols="10" rows="19" style="width:100%" maxlength="300"></textarea></td> </tr>
    </table>

    
    </div>
    
    <div style="text-align:right;"> 
     <a   class="easyui-linkbutton"  onclick="return saveCheck();"  >发送</a> 
     <a   class="easyui-linkbutton"   style="display:none;"  >定时发送</a> 
    </div>
    



    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="172DB8BD" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWBwKBhd+MBgKFzrr8AQKx9oHOBwK/76ruDAKN/a3ADwLV1ZT8DAKZvM/mBMSpfNvXOMIlrZ9NVn24VRbd0rRw" />
</div></form>
    
    <script language="javascript" type="text/javascript">

        function receiveShow() {
            location.href = "receiveCall.aspx?d=" + new Date();
        }

        function centerShow() {
            location.href = "callCenter.aspx?d=" + new Date();
        }
        function sendShow() {
            location.href = "sendCall.aspx?d=" + new Date();
        }

        function choiceUser(sort) {
            var selected = "";
            if (sort == "1") {selected= $("#hidToUserId").val(); }
            if (sort == "2") { selected = $("#hidCCUserId").val(); }
            if (sort == "3") { selected = $("#hidMCCUserId").val(); }

            var t = "";
            var user = window.showModalDialog("../index/userSelect.aspx?isSelected=1&selected=" + selected+"&d="+new Date(), "cc", "dialogWidth=500px;dialogHeight=400px");
            if (user != "") {
                t = user.split("|");
            }


            if (sort == "1") { $("#hidToUserId").val(t[1]); $("#a").val(t[0]); }
            if (sort == "2") { $("#hidCCUserId").val(t[1]); $("#b").val(t[0]); }
            if (sort == "3") { $("#hidMCCUserId").val(t[1]); $("#c").val(t[0]); }
        }



        var btnFlag = "0";
        function saveCheck() {
            if (btnFlag == "0") { btnFlag = "1" } else {
            return false;
            }

        if ($("#hidToUserId").val() == "") {
            alert('请重新选择主送人员!'); btnFlag = "0";
            return false;
        }

        if ($.trim($("#txtRemarks").val()) == "") {
            alert('发送内容必须填写!'); btnFlag = "0";
            return false;
        }
         
        if ($("#txtRemarks").val().length >500) {
            alert('发送内容过长!'); btnFlag = "0";
            return false;
        }


          $("#btnSend").click();
        }
         

    </script>


</body>
</html>