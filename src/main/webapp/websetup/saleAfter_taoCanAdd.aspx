
<html>
<head><title>

</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=17a48e594e374bee9428a515058eb666" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=17a48e594e374bee9428a515058eb666" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=17a48e594e374bee9428a515058eb666" type="text/javascript"></script><link href="../style/common.css?v=17a48e594e374bee9428a515058eb666" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="saleAfter_taoCanAdd.aspx?taoCanId=0&amp;d=Mon+Jan+05+2015+16%3a15%3a44+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTA0NzA1NzI1N2RkHml8/a9sXVptqXdh/QA7U69irsA=" />
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


    <div style="position:absolute;top:3px;left:10px" >      
      <table border="0" style="width:100%;border-bottom:1px solid gray;">
        <tr><td class="titlebg"><span>基础设置</span>
        <span class="titleSpan">(套餐新增、修改)</span> 
         </td><td align="right">
           </td></tr>
         </table> 
      <br />
      <table border="0" cellpadding="0" cellspacing="0" >
      <tr>
      <td>套餐编号:</td><td><input name="txtTaoCanBianHao" type="text" maxlength="15" id="txtTaoCanBianHao" style="width:250px;" /> </td>
      <td>套餐名称:</td><td><input name="txtTaoCanName" type="text" maxlength="15" id="txtTaoCanName" style="width:250px;" /> </td>
      </tr>
         <tr><td colspan="4" style="height:2px;"></td></tr>
      <tr>
      <td colspan="4" align="right">
       <!--按钮区域 start-->
          <a onclick="return saveCheck(1);" id="btnSave" class="easyui-linkbutton" href="javascript:__doPostBack('btnSave','')">保存</a>
          
          
          
          

          <a onclick="return closeWin();" id="btnCancel" class="easyui-linkbutton" href="javascript:__doPostBack('btnCancel','')">取消</a>
         
       <!--按钮区域 end-->
      </td>
      </tr>
      <tr><td colspan="4" style="height:2px;"></td></tr>
      <tr>
      <td colspan="4">
      <!--套餐维修项目 start-->
       <table border="1" style="border-collapse:collapse;border:1px solid gray;width:100%">
         
        

       </table>
      <!--套餐维修项目 end-->      
      </td>
      </tr>
      <tr>
      <td colspan="4" style="height:2px;"></td>
      </tr>
      <tr>
      <td colspan="4">
       <table  border="1" style="border-collapse:collapse;border:1px solid gray;width:100%" >
        <!--维修物料 start-->
        
        <!--维修物料 end-->
        </table>
      </td>
      </tr>



      </table>

    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="30B32B42" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWBQKd28TOBwLJyr7ZAgLls+y2CgKct7iSDAKQ9M/rBU5Hlf/4ixpzixUuBJZPuZAmPf+Z" />
</div></form>
    
    <script language="javascript" type="text/javascript" >

        var btnFlag = "0";
        function saveCheck() {
            if (btnFlag == "0") { btnFlag = "1"; }
            else
            {return false;}

            var err = "";
            if ($("#txtTaoCanBianHao").val() == "") { err += "套餐编号不能为空!\n"; }
            if ($("#txtTaoCanName").val() == "") { err += "套餐名称不能为空!\n"; }

            if (err != "") {alert(err);btnFlag = "0";return false;}


            __doPostBack('btnSave','');
            return false;
        }

        function closeWin() {
            parWinClose();
            return false;
        }



        //维修项目新增
        function taoCanAddWeiXiuXiangMu() {
            var u = "../websetup/saleAfter_taoCanWeiXiuXiangMuAdd.aspx?taoCanId=0&d=" + new Date();

            var SizeZ = "dialogWidth:800px;dialogHeight:550px;center:yes;help:no;resizable:no;scroll:yes;status:no;";
             
            var returnValue;
            if (navigator.userAgent.indexOf('iPad') != -1 || isChrome()) {
                returnValue = window.open(u, "维修项目添加L", "height=550,width=800,top=130,left=300,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no");
                returnValue.focus();
            } else {
                returnValue = window.showModalDialog(u, '', SizeZ);
                location.href = "saleAfter_taoCanAdd.aspx?taoCanId=0&d=" + new Date();
            }

            return false;

        }

        //维修项目删除
        function delWeiXiuXiangMu(weiXiuXiangMuThisId) {

            $.messager.confirm('删除', '删除此维修项目?', function (r) {
                if (r) {

                    $.get("saleAfter_taoCanAddExec.aspx", {
                        type: "weiXiuXiangMuDel",
                        taoCanId: '0',
                        weiXiuXiangMuThisId: weiXiuXiangMuThisId
                    }, function (data) {
                        //刷新页面
                        if (data == "ok") {
                            location.href = "saleAfter_taoCanAdd.aspx?taoCanId=0&d=" + new Date();
                        }
                    });

                }
            });

        }



        //维修物料新增
        function addWeiXiuWuLiaoList() {
            var u = "../websetup/saleAfter_taoCanWuLiaoAdd.aspx?taoCanId=0&d=" + new Date();
            var SizeZ = "dialogWidth:750px;dialogHeight:550px;center:yes;help:no;resizable:no;scroll:yes;status:no;";
           
            var returnValue;
            if (navigator.userAgent.indexOf('iPad') != -1 || isChrome()) {
                returnValue = window.open(u, "维修物料添加L", "height=550,width=800,top=130,left=300,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no");
                returnValue.focus();
            } else {
                returnValue = window.showModalDialog(u, '', SizeZ);
                location.href = "saleAfter_taoCanAdd.aspx?taoCanId=0&d=" + new Date();
            }
            return false;
        }


        function delWeiXiuWuLiao(weiXiuWuLiaoDetailGuid) {
            $.messager.confirm('删除', '删除此维修项目?', function (r) {
                if (r) {
                    $.get("saleAfter_taoCanAddExec.aspx?d=" + new Date(), {
                        type: "weiXiuWuLiaoDel",
                        taoCanId: '0',
                        weiXiuWuLiaoThisId: weiXiuWuLiaoDetailGuid
                    }, function (data) {
                        //刷新页面
                        if (data == "ok") {
                            location.href = "saleAfter_taoCanAdd.aspx?taoCanId=0&d=" + new Date();
                        }
                    });

                }
            });

        }


    </script>

</body>
</html>