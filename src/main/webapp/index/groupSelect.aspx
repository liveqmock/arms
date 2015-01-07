
<html>
<head><title>
	机构选择模块
</title>
     
     <!--加入机构选择 单选和复选的方式-->
 <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=4022ec18f38643dda217cae3643acd5b" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=4022ec18f38643dda217cae3643acd5b" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=4022ec18f38643dda217cae3643acd5b" type="text/javascript"></script><link href="../style/common.css?v=4022ec18f38643dda217cae3643acd5b" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>

<!--返回样式 start-->

<!--返回样式 end-->
<body>
    <form name="form1" method="post" action="groupSelect.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTEzMDY2ODkzNzgPZBYCAgEPZBYCAgMPFgIeC18hSXRlbUNvdW50AgEWAgIBD2QWAmYPFQcBMQQ2MDE4BDYwMTgM5rex5Lia6Zu35YWLBDYwMTg25rex5Zyz5rex5Lia6Zu35YWL6JCo5pav5rG96L2m6ZSA5ZSu5pyN5Yqh5pyJ6ZmQ5YWs5Y+4DOa3seS4mumbt+WFi2RkF1mp0Ez4m6GPhOsmq9zBWQDf2o4=" />
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


    <div style="margin-left:5px;">
    <div >
     <table border="0" style="width:580px;border-bottom:1px solid #b8b8b8;"">
        <tr><td class="titlebg"><span>机构管理</span>(权限下机构选择)
         </td><td align="right">
            <a onclick="return saveCheck();" id="lnkCheck" class="easyui-linkbutton" href="javascript:__doPostBack('lnkCheck','')">确认</a>
           </td></tr>
         </table> 
    </div>

    <table id="tb" border="1" style="border:1px solid gray;border-collapse:collapse;width:99%;margin-top:5px;" >
      
      <tr>
      <td style="text-align:center;width:30px;">NO.</td>
      <td> 
      <input type="checkbox" onclick="checkAll(this)" /> </td>
      <td>机构全称</td>
      <td>机构简称</td>
      </tr>
      
      <tr>
      <td  style="text-align:center;width:30px;">1</td>
      <td>
       <input type="checkbox" name='groupCheck' id="6018" /> 
       <input type="hidden" id="6018N" value="深业雷克" /> 
       <input type="radio" name="groupRadio" value="6018" />
      </td>
      <td>深圳深业雷克萨斯汽车销售服务有限公司</td>
      <td>深业雷克</td>
      </tr>
      
    </table>

       
    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="4F289573" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWAgK8qdGeCwLO5MDkCBzxKaaR6wUK+waWSmsY1L/yxOkg" />
</div></form>
    
    <script language="javascript" type="text/javascript" >

        $(function () {
            if ("" == "1") {
                $("input[type='checkBox']").each(function () {
                    $(this).css("display", "none");
                });
            } else {
                $("input[type='radio']").each(function () {
                    $(this).css("display", "none");
                });
             }

        });


        function saveCheck() {
            var str1 = ""; //groupId
            var str2 = ""; //groupName
            //组合叠加复选框start
            if ("" != "1") {
                $("input[name='groupCheck']").each(function () {

                    var id = this.id;
                    if ($("#" + id).attr("checked") == "checked") {
                        str1 += id + ",";
                        str2 += $("#" + id + "N").val() + ",";
                    }
                });
            } else {
                $("input[name='groupRadio']").each(function () {

                    var id = this.value;
                    if ($("#" + id).attr("checked") == "checked") {
                        str1 += id + ",";
                        str2 += $("#" + id + "N").val() + ",";
                    }
                });
            }

            window.returnValue = str1 + "|" + str2;
            window.opener = null;
            window.close();
            return false;
        }


        function checkAll(obj) {
            var c = obj.checked;
            $("input[name='groupCheck']").each(function () {
                this.checked = c;
            });
        }
    

    </script>

</body>
</html>