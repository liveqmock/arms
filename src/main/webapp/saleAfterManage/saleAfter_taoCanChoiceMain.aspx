<html>
<head><title>

</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=17a48e594e374bee9428a515058eb666" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=17a48e594e374bee9428a515058eb666" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=17a48e594e374bee9428a515058eb666" type="text/javascript"></script><link href="../style/common.css?v=17a48e594e374bee9428a515058eb666" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>

<script language="javascript" type="text/javascript" >

    var tmp = '#FFFFFF';
    $(function () {
        $('#tbList tr').mouseover(function () {
            tmp = this.style.backgroundColor;
            this.style.backgroundColor = '#eaf2ff';
        });

        $('#tbList tr').mouseout(function () {
            this.style.backgroundColor = tmp;
        });
    });
 
</script>


<base target=_self />
<body>
    <form name="form1" method="post" action="saleAfter_taoCanChoiceMain.aspx?type=yuYueManage&amp;saleAfterGuid=0fa6bbde-a9ad-4e80-8eb3-14006f387ff2&amp;d=Mon+Jan+05+2015+15%3a18%3a01+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTIxNjI1OTUxMw9kFgICAQ9kFgQCBQ8QDxYGHg5EYXRhVmFsdWVGaWVsZAUBdh4NRGF0YVRleHRGaWVsZAUBdh4LXyFEYXRhQm91bmRnZBAVBwzmraPluLjnu7Tkv64M5Y6C5a625L+d5L+uEeWkp+WuouaItyjmnIjnu5MpBuS/nemZqQzkv53pmanoh6rku5gG5YaF57uTABUHDOato+W4uOe7tOS/rgzljoLlrrbkv53kv64R5aSn5a6i5oi3KOaciOe7kykG5L+d6ZmpDOS/nemZqeiHquS7mAblhoXnu5MAFCsDB2dnZ2dnZ2dkZAIJDxYCHgtfIUl0ZW1Db3VudAIBFgICAQ9kFgJmDxUGATEDMDAxAzAyMwYyMDAuMDAEMC4wMCQwMjAwODc5Yy1jMWZiLTQ3NDMtOTI0NS1jOTlmNWNmNTU0ZTFkZASubup8xhJnbXPKmXPOrL9hrAR/" />
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


    <div style="margin-top:5px;margin-left:5px;">
      <table border="0" cellpadding="0" cellspacing="0" style="margin:0 0 0 0;width:100%" >
       <tr>
       <td valign="top"> 
       <!--套餐列表 start-->
         <table border="0"  >
          <tr>
          <td>套餐编号:</td>
          <td><input name="txtTaoCanBianHao" type="text" id="txtTaoCanBianHao" /> </td>
          <td>套餐名称:</td>
          <td><input name="txtTaoCanName" type="text" id="txtTaoCanName" /> </td>
          <td>
          <select name="ddlZhangTao" id="ddlZhangTao" style="width:135px;">
	<option value="正常维修">正常维修</option>
	<option value="厂家保修">厂家保修</option>
	<option value="大客户(月结)">大客户(月结)</option>
	<option value="保险">保险</option>
	<option value="保险自付">保险自付</option>
	<option value="内结">内结</option>
	<option selected="selected" value=""></option>

</select>
          </td>
          <td>
          <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a> 
          </td>
          </tr>
          
         </table>
       <!--套餐列表 end-->
       </td>
       </tr>
       <tr>
       <td>
        
         <table border="1" id="tbList" style="border-collapse:collapse;border:1px solid gray;width:100%" >
          <!--套餐列表 start-->
           
            <tr>
             <td>序号</td>
             <td>套餐编号</td>
             <td>套餐名称</td>
             <td>工时合计</td>
             <td>材料合计</td>
             <td></td>
            </tr>
            
            <tr>
             <td>1</td>
             <td>001</td>
             <td>023</td>
             <td>200.00</td>
             <td>0.00</td>
             <td><input type="button"  value="插入" onclick="insertTaoCan('0200879c-c1fb-4743-9245-c99f5cf554e1')"  /> </td>
            </tr>
            
          <!--套餐列表 end-->       
        </table>  
       
       </td>
       </tr>
       </table>
    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="8A886C4C" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWCwKFjNv7DgLJyr7ZAgLls+y2CgKnz6zUDwLj7MfIBwKk5e6KDQLX+Mc2Av/X8ecFAr/M3/UNAqSAgOkDAqmLicEFelfJ2BRsHwuyjfhbSDuyczbrwAA=" />

</div></form>


    <script language="javascript" type="text/javascript" >

        var btnFlag = "0";
        function insertTaoCan(taoCanId) {
            if (btnFlag != "0") { return false; } else {
            btnFlag = "1";
            }

            
            if ("yuYueManage" == "yuYueManage") {
                //预约套餐插入

                $.get("saleAfter_yuYueExec.aspx?d=" + new Date(), {
                    yuYueGuid: "0fa6bbde-a9ad-4e80-8eb3-14006f387ff2",
                    type: "taoCanInsert",
                    taoCanId: taoCanId
                }, function (data) {
                    if (data == "ok") {
                        alert('插入成功！');
                        window.opener = null;
                        window.close();
                    } else {
                        alert(data);
                    }
                    btnFlag = "0";
                })


            } else {
                //工单制作套餐插入

            if ($("#ddlZhangTao").val() == "") {alert('帐套不能为空！');btnFlag="0"; return false; }

            $.get("saleAfter_gongDanZhiZuoExec.aspx?d=" + new Date(), {
                saleAfterGuid: "0fa6bbde-a9ad-4e80-8eb3-14006f387ff2",
                type: "taoCanInsert",
                taoCanId: taoCanId,
                zhangTao: $("#ddlZhangTao").val()
            }, function (data) {
                if (data == "ok") {
                    alert('插入成功！');
                    window.opener = null;
                    window.close();
                } else {
                    alert(data);
                }
                btnFlag = "0";
            })

            }


        }



        //帐套过滤
        $(function () {
            //帐套判断 start
            if ("" == "1") {
                //保险
                $("#ddlZhangTao option").each(function () {
                    if ($(this).val() == "正常维修") {
                        $(this).remove();
                    }
                });
            } else {
                //非保险
                $("#ddlZhangTao option").each(function () {
                    if ($(this).val() == "保险" || $(this).val() == "保险自付") {
                        $(this).remove();
                    }
                });
            }
            //帐套判断 end

        });


    </script>

</body>
</html>