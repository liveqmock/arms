

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>

</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=2dfbab1f71764dc182eb87e4e0aad2fc" type="text/javascript"></script><link href="../style/common.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<script type="text/javascript">
    $(function () {
        jsonStrData = $.parseJSON(jsonstr);
        $('#dg').datagrid('loadData', jsonStrData).datagrid({
            onClickRow: function (index, data) {
                window.returnValue = data.SCSJ_Cust_Guid + "|" + data.SCSJ_Cust_Name + "|"
                + data.SCSJ_Cust_Sex + "|" + data.SCSJ_Cust_Mobile + "|"
                + data.SCSJ_Cust_Tel + "|" + data.SCSJ_Cust_Job + "|" +
               data.SCSJ_Cust_SourceFrom + "|" + data.SCSJ_Cust_Address;
                window.opener = null;
                window.close();
            }
        });


    });


    function closeWin() {
        window.opener = null;
        window.close();
    }
       
    
</script>
<body>
    <form name="form1" method="post" action="SCSJSelectList.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE2MTAzNTE0NjdkZBAiEx0FwQ/lMkVkRG3RHne2XJQ/" />
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
        <div id="search" style="">
            <table border='0'>
                <tr>
                    
                    <td>
                        客户姓名:
                    </td>
                    <td>
                        <input name="txtCustName" type="text" maxlength="10" id="txtCustName" />
                    </td>
                    <td>
                        试驾日期:
                    </td>
                    <td>
                        <input name="driverDate" type="text" maxlength="10" id="driverDate" />
                    </td>
                    <td>
                        <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
                    </td>
                    <td>
                        <a class="easyui-linkbutton" href="javascript:closeWin()">取消</a>
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <table id="dg" class="easyui-datagrid" data-options="
            
				rownumbers:true,
				singleSelect:true,
				autoRowHeight:false,
				pagination:true,
                remoteSort:false,
                pageList:[10,15,20,30,40,50,100],
                pageNumber:1,
				pageSize:15">
                <thead>
                    <tr>
                        <th data-options="field:'SCSJ_Cust_Name',width:100">
                            客户姓名
                        </th>
                        <th data-options="field:'SCSJ_Cust_Sex',width:40">
                            性别
                        </th>
                        <th data-options="field:'SCSJ_Cust_Mobile',width:100">
                            手机
                        </th>
                        <th data-options="field:'SCSJ_Cust_Tel',width:100">
                            联系电话
                        </th>
                        <th data-options="field:'SCSJ_Cust_Job',width:100">
                            职业
                        </th>
                        <th data-options="field:'SCSJ_Cust_SourceFrom',width:100">
                            客户来源
                        </th>
                        <th data-options="field:'SCSJ_Cust_Address',width:100">
                            客户地址
                        </th>
                    </tr>
                </thead>
            </table>
        </div>
    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="4E9D15D8" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWBALBqoHJBgLxmfnCDQK+qr6fBQKpi4nBBTU9VyDR1tAAENPGmtQBds84wCeu" />
</div></form>
</body>
</html>