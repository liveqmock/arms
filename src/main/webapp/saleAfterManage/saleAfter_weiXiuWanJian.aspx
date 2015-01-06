
<html>
<head id="Head1"><title>

</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../JS/Frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../JS/Frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../JS/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>

<script language="javascript" type="text/javascript" >

    var tmp = '#FFFFFF';
    $(function () {
        $('tr').mouseover(function () {
            tmp = this.style.backgroundColor;
            this.style.backgroundColor = '#eaf2ff';
        });

        $('tr').mouseout(function () {
            this.style.backgroundColor = tmp;
        });


        //初始化完检  start
        if ("true" == "") {
            var obj = document.getElementsByName("weiXiuInfo");
            for (var i = 0; i < obj.length; i++) {
                var id = obj[i].id;
                if (obj[i].value != "") {
                    $("#" + id + "WanJianF").css("display", "block");
                    $("#" + id + "ck").css("display", "none");

                } else {
                    $("#" + id + "WanJian").css("display", "block");

                }
            }
        }

        //初始化完检  end



    });


    //页面刷新方法
    function pageLoad() {
        //location.href = "saleAfter_weiXiuWanJian.aspx?saleAfterWeiXiuGuid=fccde036-8415-49b3-ad09-d7ca4dc52871&d=" + new Date();
        parent.showRefresh();

    }


</script>



<body>
    <form name="form1" method="post" action="saleAfter_weiXiuWanJian.aspx?saleAfterWeiXiuGuid=fccde036-8415-49b3-ad09-d7ca4dc52871&amp;dTue+Jan+06+2015+12%3a11%3a19+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTI0NzgxMjkzOA9kFgICAQ9kFgYCAQ8PFgIeB0VuYWJsZWRoZGQCBQ9kFgJmD2QWBAIBD2QWBAIDDw8WAh4EVGV4dAUkM2MzNDc3MDgtNjBjYi00YzBkLTlkY2UtMmYxYzY2ZTM4ODkzZGQCBQ8PFgIfAQUJ6ZmI6I2j5Y2OZGQCBA9kFgICAQ8PFgIfAGhkZAIHDxYCHgtfIUl0ZW1Db3VudAIBFgICAQ9kFgJmDxUUATEkNDBkZmFlNTMtNzg1Ni00N2RmLTk2NjQtYTEyNjYzNzljMjk4JDQwZGZhZTUzLTc4NTYtNDdkZi05NjY0LWExMjY2Mzc5YzI5OCQzM2Y2Yzg0Zi0wYzAyLTQ3MDMtYjBhMy0wN2ZjMzNjODAwODMkNDBkZmFlNTMtNzg1Ni00N2RmLTk2NjQtYTEyNjYzNzljMjk4BuS/neWFuwbkv53lhbsONDAsMDAwS03kv53lhbsEOS4wMAY5MDAuMDAM5Y6C5a625L+d5L+uEuS4gOiIrOe7tOS/ruS6jOe7hAnmnY7lv5fln7okNDBkZmFlNTMtNzg1Ni00N2RmLTk2NjQtYTEyNjYzNzljMjk4ETIwMTUtMS02IDExOjA0OjMyCeW8oOWFiOi1niQ0MGRmYWU1My03ODU2LTQ3ZGYtOTY2NC1hMTI2NjM3OWMyOTgkNDBkZmFlNTMtNzg1Ni00N2RmLTk2NjQtYTEyNjYzNzljMjk4JDQwZGZhZTUzLTc4NTYtNDdkZi05NjY0LWExMjY2Mzc5YzI5OCQ0MGRmYWU1My03ODU2LTQ3ZGYtOTY2NC1hMTI2NjM3OWMyOThkZA49mNoMPs36OYMckuIyTOzU2TFb" />
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


    <div style="margin-left:5px;margin-top:5px;margin-right:5px;">
         

         <!--按钮区域 start-->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
            <td align="right">
             <a id="lnkSave" disabled="disabled" class="easyui-linkbutton">完成检查</a>
             <a onclick="return winClose();" id="lnkCancel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkCancel','')">关闭</a>
   
            </td>
            </tr>
            <tr>
            <td style="height:2px;"></td>
            </tr>
            </table>
         <!--按钮区域 end-->
         
         <!--批量完检 列表 start-->
         
         <div style="height:3px;" ></div>
         <!--批量完检 列表 end-->


         <!--数据列表 start-->
         <table  border="1" style="border-collapse:collapse;border:1px solid #d6d3ce;width:100%" >
          <!--维修项目 start-->
         
          <tr>
           <td   style="text-align:center;width:70px;" >NO.
           <input type="checkbox" onclick="chkChange(this)"  />
           </td><td  width='40px'>工段</td><td>维修内容</td>
           <td  style="text-align:right;width:60px;">工时</td><td  style="text-align:right;width:65px;">工时费</td>
           <td  width="70px">帐套</td>
           <td  width='100px'>维修班组</td><td  width='80px'>主修人</td>
           <td  width='70px'>完检</td><td  width='70px'>返修</td>
          </tr>
         
         <tr>
           <td style="text-align:center;white-space:nowrap;">1
           <input type="checkbox" name='ck' id="40dfae53-7856-47df-9664-a1266379c298ck"  style="display:inline;" />
           <input type="hidden" id="40dfae53-7856-47df-9664-a1266379c298"  name='weiXiuInfo' value="33f6c84f-0c02-4703-b0a3-07fc33c80083"  />
           <input type="hidden" id="40dfae53-7856-47df-9664-a1266379c298GongDuan"   value="保养"  />
           </td>
           <td  width='40px'>保养</td>
           <td>40,000KM保养</td>
           <td style="text-align:right;">9.00</td>
           <td style="text-align:right;">900.00</td>
           <td>厂家保修</td>
           <td>一般维修二组</td>
           <td>李志基</td>
           <td>
           <span id="40dfae53-7856-47df-9664-a1266379c298WanJianB">2015-1-6 11:04:32张先赞</span>
           <input type="button" id="40dfae53-7856-47df-9664-a1266379c298WanJian"  value="完检" style="height:25px;width:50px;display:none;" onclick=wanJian('40dfae53-7856-47df-9664-a1266379c298','wanJian') />
           </td>
           <td> 
            <input type="button" id="40dfae53-7856-47df-9664-a1266379c298WanJianF"  style="display:none;" value="返修" style="height:25px;width:50px;" onclick=wanJian('40dfae53-7856-47df-9664-a1266379c298',-1)  />
           </td>
          </tr>
         
         <tr>
           <td width='10px'></td>
           <td>合计</td>
           <td></td>
           <td  style="text-align:right;">9.00</td>
           <td  style="text-align:right;">900.00</td>
           <td></td>
           <td></td>
           <td></td><td></td> 
           <td></td> 
          </tr>
         
        <!--维修项目 end-->
         </table>
         <!--数据列表 end-->
    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="1597B51C" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWAgKzqoqIBgKmtLTPAWw2UVO81GaJuA1euM1gaf1zoWTS" />
</div></form>

    <script language="javascript" type="text/javascript">

        //初始化已经完检的单据禁止操作
 
        //获取当前工段信息 返回维修班组及班组下的人员信息 JSON格式
 
        $(function () {
            var obj = document.getElementsByName("weiXiuInfo");
            for (var i = 0; i < obj.length; i++) {
                var id = obj[i].id;
                if (obj[i].value != "") {
                    //兼职完检 按钮

                }   
            }

        })



        //弹出 单项完检 单项返修
        function wanJian(weiXiuDetailId, sort) {
            var u = "saleAfter_WeiXiuWanJianByWeiXiuId.aspx?weiXiuDetailId=" + weiXiuDetailId + "&sort="+sort+"&saleAfterGuid=fccde036-8415-49b3-ad09-d7ca4dc52871&d=" + new Date();
            var SizeZ = "dialogWidth:650px;dialogHeight:350px;center:yes;help:no;resizable:no;scroll:no;status:no;";
             var returnValue;
             if (navigator.userAgent.indexOf('iPad') != -1 || isChrome()) {
                 returnValue = window.open(u, "维修项目单项完检", "height=400,width=730,top=130,left=480,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no");
                 returnValue.focus();
             } else {
                 returnValue = window.showModalDialog(u, window, SizeZ);
                 pageLoad();
             }
            
        }


        function wanJianList() {
            if ($("#txtWanJianRenId").val() == "") {
                alert('未选择完检人!');return false;
            }
            var str = "";
            //组合叠加复选框start
            $("input[name='weiXiuInfo']").each(function () {

                var id = this.id;
                if ($("#" + id + "ck").attr("checked") == "checked" && $("#" + id + "ck").css("display").indexOf("nline")>0) {
                    str += id + ",";
                }
            });
          
            if (str == "") {alert("未选择任何项");return false;}
            //组合叠加复选框end
            $("#txtWanJianIdList").val(str);

            __doPostBack('lnkWanJian','');
            return false;
        }

        function chkChange(obj) {
            var c= obj.checked;
            $("input[name='ck']").each(function () {
                this.checked = c;
            });

        }

        function winClose() {
            try {
                parent.parent.parWinClose();
            } catch (e) {

                parent.window.opener = null;
                parent.window.close();
            }
            return false;
        }


    </script>

</body>
</html>