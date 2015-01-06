<html>
<head><title>
	工单制作新增维修项目
</title>
    <style type="text/css" >
      td
      {
          white-space:nowrap;
          }
    </style>

 <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=17a48e594e374bee9428a515058eb666" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=17a48e594e374bee9428a515058eb666" /><script src="../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../JS/Frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../JS/Frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../JS/common.js?v=17a48e594e374bee9428a515058eb666" type="text/javascript"></script><link href="../style/common.css?v=17a48e594e374bee9428a515058eb666" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<base target="_self" />
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
        });

    
      
    </script>
<body>
    <form name="form1" method="post" action="saleAfter_gongDanZhiZuoAddWeiXiuXiangMu.aspx?type=yuYueManage&amp;saleAfterGuid=0fa6bbde-a9ad-4e80-8eb3-14006f387ff2&amp;d=Mon+Jan+05+2015+15%3a19%3a49+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTQyNTI0OTMyMw9kFgICAQ9kFgYCCQ8QDxYGHg1EYXRhVGV4dEZpZWxkBQF2Hg5EYXRhVmFsdWVGaWVsZAUBdh4LXyFEYXRhQm91bmRnZBAVBgbmnLrnlLUG5L+d5YW7BumSo+mHkQbnvo7lrrkG5Za35ryGABUGBuacuueUtQbkv53lhbsG6ZKj6YeRBue+juWuuQbllrfmvIYAFCsDBmdnZ2dnZ2RkAgsPEA8WBh8BBQF2HwAFAXYfAmdkEBUHDOato+W4uOe7tOS/rgzljoLlrrbkv53kv64R5aSn5a6i5oi3KOaciOe7kykG5L+d6ZmpDOS/nemZqeiHquS7mAblhoXnu5MAFQcM5q2j5bi457u05L+uDOWOguWutuS/neS/rhHlpKflrqLmiLco5pyI57uTKQbkv53pmakM5L+d6Zmp6Ieq5LuYBuWGhee7kwAUKwMHZ2dnZ2dnZ2RkAg8PFgIeC18hSXRlbUNvdW50AgEWAgIBD2QWAmYPFQwBMQExAjAxBuacuueUtQQxLjAwATECMDEG5py655S1BDEuMDAAAXQBMWRknp3uHxPB0suRZXZrr2fJKCRJvFE=" />
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


    <div style="margin-top:5px;margin-left:5px">
        <table border="0" style="width:700px;border-bottom:1px solid #b8b8b8;"  >
        <tr><td class="titlebg"><span>售后管理</span>
        <span class="titleSpan">(维修项目新增)</span> 
         </td><td align="right">
           </td></tr>
         </table> 

       <table border="0" >
       <tr>
        <td>项目编号:</td>
        <td><input name="txtXiangMuBianHao" type="text" maxlength="30" id="txtXiangMuBianHao" style="width:150px;" /> </td>
         <td>维修内容:</td>
        <td><input name="txtWeiXiuNeiRong" type="text" id="txtWeiXiuNeiRong" style="width:160px;" /></td>
       
        <td>车系:</td>
        <td><input name="txtCheXi" type="text" id="txtCheXi" style="width:150px;" /> </td>
      
        <td>
        <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
        </td> 
       </tr>
       <tr>
       <td>维修工段:</td>
        <td><select name="ddlWeiXiuGongDuan" id="ddlWeiXiuGongDuan" style="width:150px">
	<option value="机电">机电</option>
	<option value="保养">保养</option>
	<option value="钣金">钣金</option>
	<option value="美容">美容</option>
	<option value="喷漆">喷漆</option>
	<option selected="selected" value=""></option>

</select>  </td>
       <td>维修帐套:</td><td>
       <select name="ddlSuoShuZhangTao" id="ddlSuoShuZhangTao" style="width:160px">
	<option value="正常维修">正常维修</option>
	<option value="厂家保修">厂家保修</option>
	<option value="大客户(月结)">大客户(月结)</option>
	<option value="保险">保险</option>
	<option value="保险自付">保险自付</option>
	<option value="内结">内结</option>
	<option selected="selected" value=""></option>

</select>
       </td>
         <td>车型:</td>
        <td><input name="txtCheXing" type="text" id="txtCheXing" style="width:150px;" /></td>
       <td></td><td></td>

       </tr>
       </table>
       <!--数据列表 satrt-->
       <table border="1" cellpadding="0" cellspacing="0"   style="border-collapse:collapse;border:1px solid gray;width:700px;" >
          
           <tr style="height:23px;">
           <td width="80px">维修编号</td><td width="30px">工段</td><td width="30px">工时</td>
           <td width="30px">车系</td><td width="60px">车型代码</td><td width="250px">维修内容</td> 
           </tr>
           
           <tr  style="height:23px;"
            id="1" onclick=insertWeiXiuXiangMu(1,'01','机电','1.00','1') >
           <td>01</td>
           <td>机电</td>
           <td>1.00</td>
           <td></td>
           <td>t</td>
           <td>1</td>
           </tr>
           
           
       </table> 
       <!--数据列表 end-->
    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="AC860825" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWEwK60ozDCwK9v4SqBAL6hZLBDALWz/zOAgKpi4nBBQKCx7bEDgLnlp7mDALpq4VlArb25rMDAp2q8pcMApTu4YEDAv/F+7wPArvmkKAHAvzvueINAo/ykF4Cp92mjwUC58aInQ0C/IrXgQMClt/IgwZaJN2ozbE5f1h2CNObg819PI9X0w==" />
</div></form>
    
    <script language="javascript" type="text/javascript" >
        function insertWeiXiuXiangMu(trId, bianHao, gongDuanName, gongShi, weiXiuNeiRong) {
            var saleAfterGuid = "0fa6bbde-a9ad-4e80-8eb3-14006f387ff2";

            if ("yuYueManage" == "yuYueManage") {
                //预约管理
                $.get("saleAfter_yuYueExec.aspx?d="+new Date(), {
                    type: "weiXiuXiangMuInsert",
                    yuYueGuid: "0fa6bbde-a9ad-4e80-8eb3-14006f387ff2",
                    bianhao: bianHao,
                    gongDuanName: gongDuanName,
                    gongShi: gongShi,
                    weiXiuNeiRong: weiXiuNeiRong
                }, function (data) {
                    if (data == "ok") {
                        $("#" + trId).css("display", "none");
                    }
                });

            } else {

                if ($("#ddlSuoShuZhangTao").val() == "") { alert('维修帐套未选择！'); return false; }

                //工单制作
                $.get("saleAfter_gongDanZhiZuoExec.aspx?d="+new Date(), {
                    type: "weiXiuXiangMuInsert",
                    saleAfterGuid: "0fa6bbde-a9ad-4e80-8eb3-14006f387ff2",
                    bianhao: bianHao,
                    gongDuanName: gongDuanName,
                    gongShi: gongShi,
                    zhangTao:$("#ddlSuoShuZhangTao").val(),
                    weiXiuNeiRong: weiXiuNeiRong
                }, function (data) {
                    if (data == "ok") {
                        if (window.opener != null) {
                            window.opener.pageLoad();
                            window.opener.focus();
                        } 
                        $("#" + trId).css("display", "none");
                    }
                });
            }
        }



        //帐套过滤

        $(function () {
            //帐套判断 start
            if ("" == "1") {
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