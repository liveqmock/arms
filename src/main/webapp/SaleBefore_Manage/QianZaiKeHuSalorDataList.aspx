<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>

</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<style type="text/css">
   
</style>
<script language="javascript" type="text/javascript">
    $(function () {
        $("#dg").datagrid({
            onDblClickCell: function (rowIndex, field, value) {
                var rowdata = $('#dg').datagrid('getSelected');
                parent.winopen('../SaleBefore_Manage/QianZaiKeHuDetial.aspx?CustGuid=' + rowdata.CustGuid + '&&type=0&&syauto=' + new Date() + '', '潜在客户<span style="color:red;">[' +rowdata. Cust_Name + ']</span>', 800, 600, true, true, false);
            }
        });
        $("#hideSearch,#sortFiled,#search").click(function () {
            if (this.id == "sortFiled") {
                parent.winopen('../index/PageFiledSelect.aspx?PageName=QianZaiKeHuSalorDataList&&syauto=' + new Date() + '', '列设置', 845, 510, true, true, false);
            }
            if (this.id == "hideSearch") {
                $("#searchid").hide();
            }
            if (this.id == "search") {
                $("#searchid").show();
            }
        });
    });
    //批示登记 
    function PiShiDengJi() {
        var rowdata = $('#dg').datagrid('getSelected');
        if (rowdata) {
            if (rowdata.CustGuid != null) {
                parent.winopen('../SaleBefore_Manage/GenZongPiShiDetail.aspx?CustGuid=' + rowdata.CustGuid + '&&syauto=' + new Date() + '', '潜在客户<span style="color:red;">[' + rowdata.Cust_Name + ']</span>跟踪记录明细', 845, 510, true, true, false);
            }
            else {
                $.messager.show({
                    title: '温馨提示',
                    msg: '<div align="center" style="font-size:14px;width:100%;hieght:80px;color:red;margin-top:10px;">您选择的数据为空</div>',
                    timeout: 2000,
                    showType: 'fade'
                });
            }
        }
        else {
            $.messager.show({
                title: '温馨提示',
                msg: '<div align="center" style="font-size:14px;width:100%;hieght:80px;color:red;margin-top:10px;">请选择客户</div>',
                timeout: 2000,
                showType: 'fade'
            });
        }
    }
    //
    //添加客户
    function addCust() {
        parent.winopen('../SaleBefore_Manage/QianZaiKeHuDetial.aspx?CustGuid=&type=Add&syauto=' + new Date() + '', '潜在客户信息录入', 800, 550, true, true, false);
    }

 

</script>
<body>
    <form name="form1" method="post" action="QianZaiKeHuSalorDataList.aspx?SalorGuid=94EE58FC-C4C3-4D27-B7E6-011D160AE403&amp;FieldType=CurMonthLost" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJNjk3Mzg1NzA5D2QWAgIDD2QWAgIBDxYCHgRUZXh0BTE8c3BhbiBzdHlsZT0iY29sb3I6cmVkIj7lvZPmnIjmtYHlpLHlrqLmiLc8L3NwYW4+ZGRB3W1bNEj0UkAHXzjVd+rS+pd8vw==" />
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


    <div>
        <div class="allRegion">
            <div class="title">
                <table border="0" style="width: 100%;">
                    <tr>
                        <td class="titlebg">
                        
                          <span class="titleSpan" >潜在客户明细管理</span>
                        <span style="color:red">当月流失客户</span></td>
                        <td align="right">
                            <a href="javascript:location.href='../SaleBefore_Manage/QianZaiKeHu.aspx'" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-back'">
                                返回</a> <a href="###" id="search" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-search'">
                                    条件查询</a>
                            <a id="LinkBtnRefresh" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-reload'" href="javascript:__doPostBack('LinkBtnRefresh','')">刷新</a>
                            <a href="javascript:addCust()" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'">
                                添加客户</a> <a href="javascript:PiShiDengJi()" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'">
                                    批示登记</a> <a href="###" id="sortFiled" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-excel'">
                                列设置</a> 

                        </td>
                    </tr>
                </table>
            </div>
         
            <div class="region">
               
            <div id="searchid" style="display: none; width: 980px; height: 30px;">
                <table style="margin: 10px 0 0 40px;">
                    <tr>
                        <td>
                            客户名称
                        </td>
                        <td>
                            <input name="txtCustName" type="text" maxlength="10" id="txtCustName" />
                        </td>
                        <td>
                            客户手机
                        </td>
                        <td>
                            <input name="txtMobile" type="text" maxlength="11" id="txtMobile" />
                        </td>
                         <td>
                            客户等级
                        </td>
                        <td>
                            <input name="txtDengJi" type="text" maxlength="5" id="txtDengJi" />
                        </td>
                        <td>
                          计划联系
                        </td>
                        <td>
                            <input name="txtPlanlinkDate" type="text" maxlength="15" id="txtPlanlinkDate" class="easyui-datebox" />
                        </td>
                        <td>
                            <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
                            <a href="###" id="hideSearch" class="easyui-linkbutton">隐藏</a>
                        </td> 
                    </tr>
                </table>
            </div>
              
            
        
             
            </div>
        </div>
    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="6E4854F7" />
</div></form>
</body>
</html>