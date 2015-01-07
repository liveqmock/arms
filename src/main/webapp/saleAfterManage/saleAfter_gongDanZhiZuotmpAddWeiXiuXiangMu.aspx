

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	临时添加维修项目
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=17a48e594e374bee9428a515058eb666" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=17a48e594e374bee9428a515058eb666" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=17a48e594e374bee9428a515058eb666" type="text/javascript"></script><link href="../style/common.css?v=17a48e594e374bee9428a515058eb666" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<base target="_self" />
<body>
    <form name="form1" method="post" action="saleAfter_gongDanZhiZuotmpAddWeiXiuXiangMu.aspx?saleAfterGuid=d4e10073-1054-4c86-b552-f44623513d0b&amp;d=Mon+Jan+05+2015+15%3a37%3a32+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJLTY1MTE0OTczD2QWAgIBD2QWCAIBDw8WAh4EVGV4dAUOSkREMjAxNTAxMDUwMjhkZAIDDw8WAh8ABQnmjqXlvoXkuK1kZAIFDxAPFgYeDURhdGFUZXh0RmllbGQFAXYeDkRhdGFWYWx1ZUZpZWxkBQF2HgtfIURhdGFCb3VuZGdkEBUGBuacuueUtQbkv53lhbsG6ZKj6YeRBue+juWuuQbllrfmvIYAFQYG5py655S1BuS/neWFuwbpkqPph5EG576O5a65BuWWt+a8hgAUKwMGZ2dnZ2dnZGQCBw8QDxYGHwIFAXYfAQUBdh8DZ2QQFQcM5q2j5bi457u05L+uDOWOguWutuS/neS/rhHlpKflrqLmiLco5pyI57uTKQbkv53pmakM5L+d6Zmp6Ieq5LuYBuWGhee7kwAVBwzmraPluLjnu7Tkv64M5Y6C5a625L+d5L+uEeWkp+WuouaItyjmnIjnu5MpBuS/nemZqQzkv53pmanoh6rku5gG5YaF57uTABQrAwdnZ2dnZ2dnZGRkTUbGQWepYKC9td9rbgIk4Iygmdk=" />
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


    <div style="margin-left:10px;" >
       <table border="0" style="width:100%;">
        <tr><td class="titlebg"><span>售后管理</span>
        <span class="titleSpan">(维修项目新增)</span> 
         </td><td align="right">
           </td></tr>
         </table> 

       <table border="0"  style="background-color:#eaf2ff;width:500px;margin-left:10px;border:1px solid gray;" >
       <tr>
       <td colspan="2" style="height:20px;"></td>
       </tr>
       <tr>
       <td align="right">维修单号:</td>
       <td align="left"><input name="txtWeiXiuBillNo" type="text" value="JDD20150105028" readonly="readonly" id="txtWeiXiuBillNo" style="width:120px;" />
       <span id="labStatus">接待中</span>
       </td>
       </tr>
       <tr>
       <td align="right">所属工段&帐套:</td>
       <td align="left">
       <select name="ddlSuoShuGongDuan" id="ddlSuoShuGongDuan" style="width:80px;">
	<option value="机电">机电</option>
	<option value="保养">保养</option>
	<option value="钣金">钣金</option>
	<option value="美容">美容</option>
	<option value="喷漆">喷漆</option>
	<option selected="selected" value=""></option>

</select>
       <select name="ddlSuoShuZhangTao" id="ddlSuoShuZhangTao" style="width:120px;">
	<option value="正常维修">正常维修</option>
	<option value="厂家保修">厂家保修</option>
	<option value="大客户(月结)">大客户(月结)</option>
	<option value="保险">保险</option>
	<option value="保险自付">保险自付</option>
	<option value="内结">内结</option>
	<option selected="selected" value=""></option>

</select>
       </td>
       </tr>
       
       <tr>
       <td align="right">工时:</td>
       <td align="left"><input name="txtGongShi" type="text" id="txtGongShi" class="easyui-numberbox" data-options="min:0,max:900,precision:2" style="width:80px;" /> </td>
       </tr>
       <tr>
       <td align="right">维修内容:</td>
       <td align="left">
       <textarea name="txtWeiXiuNeiRong" rows="2" cols="20" id="txtWeiXiuNeiRong" style="width:250px;height:100px;"></textarea></td>
       </tr>

       <tr>
       <td colspan="2" align="center">
       <a onclick="return saveCheck();" id="lnkSave" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSave','')">保存</a>
       <a onclick="return winClose();" id="lnkCancel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkCancel','')">取消</a>
       </td>
       </tr>

       </table>

    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="7E057C61" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWEwLyi+/aBAKFk4qhBwL0q+fCDAKR+s/gDgKfx9TjAgLAmre1AQLrxqORDgLigrCHAQL/xfu8DwK75pCgBwL877niDQKP8pBeAqfdpo8FAufGiJ0NAvyK14EDAsLE6MILAvqFksEMAqPt7YEIAqa0tM8BZaoYKQXjtsT4K576ecbO8Mu6hm4=" />
</div></form>
    
    <script language="javascript" type="text/javascript" >

        var btnFlag = 0;
        function saveCheck() {
            if (btnFlag == "0") { btnFlag = "1"; } else {return false;}
            //数据验证
            var err = "";

            if ($("#ddlSuoShuGongDuan").val() == "") {err += "所属工段不能为空！\n"; }
            if ($("#ddlSuoShuZhangTao").val() == "") { err += "所属帐套不能为空！\n"; }
            if ($("#txtGongShi").val() == "") { err += "工时必须填写！\n"; }
            if ($("#txtWeiXiuNeiRong").val() == "") { err += "维修内容不能为空！\n"; }
            if ($("#txtWeiXiuNeiRong").val().length > 200) {err += "维修内容过长！\n";}

            if (err != "") {alert(err);btnFlag = "0";  return false;}

            var saleAfterGuid = "d4e10073-1054-4c86-b552-f44623513d0b";
            $.get("saleAfter_gongDanZhiZuoExec.aspx", {
                type: "weiXiuXiangMuInsert",
                saleAfterGuid: "d4e10073-1054-4c86-b552-f44623513d0b",
                bianhao: "",
                gongDuanName: $("#ddlSuoShuGongDuan").val(),
                zhangTao: $("#ddlSuoShuZhangTao").val(),
                gongShi: $("#txtGongShi").val(),
                weiXiuNeiRong: $("#txtWeiXiuNeiRong").val()
            }, function (data) {
                if (data == "ok") {
                    alert("新增成功！\n请新增下一条维修信息");
                    btnFlag = "0";
                    if (window.opener != null) {
                        window.opener.pageLoad();
                        window.opener.focus();
                    }             
                    $("#txtGongShi").val("");
                    $("#txtWeiXiuNeiRong").val("");
                }
            }
            );

            return false;
        }


        function winClose() {
          
            window.opener = null;
            window.close();
            return false;
        }



        $(function () {
            //帐套判断 start
            if ("0" == "1") {
                //保险
                $("#ddlSuoShuZhangTao option").each(function () {
                    if ($(this).val() == "正常维修") {
                        $(this).remove();
                    }
                });
            } else {
                //非保险
                $("#ddlSuoShuZhangTao option").each(function () {
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