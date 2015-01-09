<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
    跟踪批示
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=2dfbab1f71764dc182eb87e4e0aad2fc" type="text/javascript"></script><link href="../style/common.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<script type="text/javascript">


    $(function () {

        //隐藏搜索框

        $("#sortFiled,#search,#hideSearch").click(function () {
            if (this.id == "hideSearch") {
                $("#searchid").hide();
            }
            if (this.id == "search") {
                $("#searchid").show();
            }
            if (this.id == "sortFiled") {
                parent.winopen('../Index/PageFiledSelect.aspx?PageName=GenZongPiShiDataSet&&syauto=' + new Date() + '', '列设置', 845, 510, true, true, false);
            }
        });

        $("#dg").datagrid({
            onDblClickCell: function (rowIndex, field, value) {
                if (field == "allcount" || field == "monthcount") {
                    var rowdata = $('#dg').datagrid('getSelected');
                    window.location.href = 'SalorGenZongList.aspx?SalorGuid=' + rowdata.userGuid + '&type=' + field + '&syauto=' + new Date();
                }
            }
        });
    });
</script>
<style type="text/css">
    a
    {
        display: none;
    }
</style>
<body>
    <form name="form1" method="post" action="GenZongPiShiDataSet.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJNDc4MTcxNTY0ZGRuK/PxBam4efOaynEcM7mvtokM2Q==" />
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


    <div class="allRegion">
        <div class="title">
            <table border="0" style="width: 100%;">
                <tr>
                    <td class="titlebg">
                        <span class="titleSpan">跟踪批示</span>
                    </td>
                    <td align="right">
                        <a href="###" id="search" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-search'">
                            条件查询</a> <a href="###" id="sortFiled" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-excel'">
                                列设置</a> <a id="A1" href="javascript:window.location.reload() ;" class="easyui-linkbutton"
                                    data-options="plain:true,iconCls:'icon-reload'">刷新</a>
                    </td>
                </tr>
            </table>
        </div>
        
        <div id="searchid" style="display: none; width: 800px; height: 30px;">
            <table style="width: 600px; height: 30px; margin: 10px 0 0 40px;">
                <tr>
                    <td>
                        销售部门
                    </td>
                    <td>
                        <input name="txtDeptName" type="text" id="txtDeptName" />
                    </td>
                    <td>
                        销售员
                    </td>
                    <td>
                        <input name="txtSalorName" type="text" id="txtSalorName" />
                    </td>
                    <td>
                        <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
                        <a href="##" id="hideSearch" class="easyui-linkbutton">隐藏</a>
                    </td>
                </tr>
            </table>
        </div>
        
        <div class="region">
            
            
        </div>
    </div>
   
    
<div>

    <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="72D0D520" />
    <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWBALwnarjDwKhltH8DQLVscCxBwKpi4nBBewMvNHpcaBzL6/+FfHVrHLaetv8" />
</div></form>
</body>
</html>