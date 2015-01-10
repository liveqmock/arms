<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>

</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<style type="text/css">
    a
    {
        display: none;
    }
</style>
<script type="text/javascript">
    $(function () {
        $("#hideSearch,#sortFiled,#search").click(function () {
            if (this.id == "sortFiled") {
                parent.winopen('../index/PageFiledSelect.aspx?PageName=LiuShiKeHu&&syauto=' + new Date() + '', '列设置', 845, 510, true, true, false);
            }
            if (this.id == "hideSearch") {
                $("#searchid").hide();
            }
            if (this.id == "search") {
                $("#searchid").show();
            }
        });
        $("#dg").datagrid({
            onDblClickCell: function (rowIndex, field, value) {
                var rowdata = $('#dg').datagrid('getSelected');
                if (field == 'AllLost' || field == 'CurMonthLost') {
                    window.location.href = "SalorLiuShiList.aspx?SalorGuid=" + rowdata.SalorGuid + "&type=" + field + "&d=" + new Date() + "";
                }
            }
        });
    });
</script>
<body>
    <form name="form1" method="post" action="LiuShiKeHu.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE0ODkzMTMxNDlkZPZq6v9Ag/SYCQy3M+TrZS1uSXWz" />
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
                        <span class="titleSpan">流失客户</span>
                    </td>
                    <td align="right">
                        <a href="##" id="search" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-search'">
                            查询</a><a href="###" id="sortFiled" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-excel'">
                                列设置</a> <a id="A1" href="javascript:window.location.reload() ;" class="easyui-linkbutton"
                                    data-options="plain:true,iconCls:'icon-reload'">刷新</a>
                    </td>
                </tr>
            </table>
        </div>
        <div class="region">
            
            <div id="searchid" style="display: none; width: 800px; height: 30px;">
                <table style="width: 600px; height: 30px; margin: 10px 0 0 40px;">
                    <tr>
                        <td>
                            销售部门
                        </td>
                        <td>
                            <input name="txtDeptName" type="text" maxlength="10" id="txtDeptName" />
                        </td>
                        <td>
                            销售员
                        </td>
                        <td>
                            <input name="txtSalorName" type="text" maxlength="10" id="txtSalorName" />
                        </td>
                        <td>
                            <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
                            <a href="##" id="hideSearch" class="easyui-linkbutton">隐藏</a>
                        </td>
                    </tr>
                </table>
            </div>
            
           
            <table id="dg"  sortName='' sortOrder='' class='easyui-datagrid'data-options="rownumbers:true,singleSelect:true,autoRowHeight:false, remoteSort:false,pagination:true, pageList:[10,15,20,30,40,50,100], remoteSort:false,pageNumber:1,pageSize:15,columns:[[ {field:'deptName',title:'部门',width:100, hidden:false,sortable:false },{field:'CurMonthLost',title:'本月流失',width:100, hidden:false,sortable:false },{field:'AllLost',title:'所有流失',width:100, hidden:false,sortable:false },{field:'SalorName',title:'销售员',width:100, hidden:false,sortable:false },{field:'SalorGuid',title:'SalorGuid',width:0, hidden:true,sortable:false }]]"></table><script type="text/javascript">    var jsonstr='{"total":9,"rows":[{"deptName":"九江丰田一科","SalorGuid":"636989E1-20D4-4CE5-86E6-A50B46BBA752","SalorName":"肖伟","AllLost":"561","CurMonthLost":"0"},{"deptName":"九江丰田大客户","SalorGuid":"93F7081A-3944-435A-9F3C-15678E2B400F","SalorName":"高磊","AllLost":"0","CurMonthLost":"0"},{"deptName":"九江丰田二科","SalorGuid":"510BF7CB-E579-4A4B-8E8C-2168978CB2B8","SalorName":"胡梦云","AllLost":"476","CurMonthLost":"0"},{"deptName":"九江丰田三拓展","SalorGuid":"A6F78D20-D3CB-4714-A983-0381F9697FAA","SalorName":"刘剑","AllLost":"23","CurMonthLost":"0"},{"deptName":"九江丰田二科","SalorGuid":"05010206-ED73-4723-8D5C-CE734C8993F6","SalorName":"柯科","AllLost":"268","CurMonthLost":"0"},{"deptName":"九江丰田销售部","SalorGuid":"7A0C6171-36A4-4A26-9F66-293417B17B52","SalorName":"李建","AllLost":"608","CurMonthLost":"0"},{"deptName":"九江丰田销售部","SalorGuid":"3174CE9A-6001-47A3-91AD-5EAE80880482","SalorName":"钟仕城","AllLost":"764","CurMonthLost":"0"},{"deptName":"九江丰田一科","SalorGuid":"5488B750-111C-4AF1-8A14-FF83AB7D689E","SalorName":"史丽萍","AllLost":"0","CurMonthLost":"0"},{"deptName":"九江丰田销售部","SalorGuid":"94EE58FC-C4C3-4D27-B7E6-011D160AE403","SalorName":"詹欢","AllLost":"2","CurMonthLost":"0"}]}'; var jsonStrData=$.parseJSON(jsonstr);
                          $(function(){
                          $('#dg').datagrid('loadData',jsonStrData);
                           var pg = $('#dg').datagrid('getPager');
                            if(pg){
                                $(pg).pagination({    onSelectPage:function(pageNumber,pageSize){ __doPostBack('dg',pageNumber+','+pageSize); }  });}
                          } );</script>
        </div>
    </div>
    
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="FD6E78D5" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWBALp79qMAgKhltH8DQLVscCxBwKpi4nBBXfXQgIs/HdlrR41JLmJisvYdcwG" />
</div></form>
 
</body>
</html>