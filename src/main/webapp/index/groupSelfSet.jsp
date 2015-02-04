<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head><title>
	机构设置 
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
<table id="mydlg" class="easyui-dialog" closed="true" style="width: 700px; height: 300px; padding: 10px 20px;">
  <form name="fm" method="post" id="fm">   
       <table border="0" style="width:100%;border-bottom:1px solid gray;padding-right:5px;">
        <tr><td class="titlebg"><span>系统设置</span>
        <span class="titleSpan">(机构设置)</span> 
         </td><td align="right">
           </td></tr>
         </table> 
          
          <table border="1" style="border-collapse:collapse;border:1px solid gray;width:700px;margin-top:2px;margin-bottom:2px;">
          <tr>
          <td>机构全称:</td>
           </tr>
           <tr>
           <td>电话1:</td>
           <td> <input name="txtTel1" type="text" value="075583996121" maxlength="15" id="txtTel1" style="width:120px;" /> </td>
           <td>电话2:</td>
           <td> <input name="txtTel2" type="text" value="075583996121" maxlength="15" id="txtTel2" style="width:120px;" /> </td>
           <td>传真:</td>
           <td><input name="txtChuanZhen" type="text" value="0755-27755230" maxlength="15" id="txtChuanZhen" style="width:120px;" /> </td>
           </tr>
           <tr>
           <td>联系地址:</td>
           <td colspan="5"></td>
           </tr>
           <tr>
           <td colspan="6">
           <textarea name="txtAdd" rows="2" cols="20" id="txtAdd" style="width:500px;">宝安区西乡立交万骏汇1033室</textarea>
           </td>
           </tr>
           <tr>
           <td colspan="6" style="text-align:center;">
             <!--  <a onclick="editItem()" id="btnSave" class="easyui-linkbutton" href="javascript:void(0)">保存</a> -->&nbsp;&nbsp;&nbsp;
              <a onclick="return parWinClose();" id="lnkCancel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkCancel','')">取消</a>
           </td>
           </tr>

         </table>

      
      </form>
    </table>


<script type="text/javascript">
var url;
function editItem(clickevent) {
	var row = $('#mydlg').datagrid('getEventTargetRow', clickevent);
	if (row) {
		$('#mydlg').dialog('open').dialog('setTitle', '修改机构信息');
		$('#fm').form('load', row);
		url = 'updateJiGou.action?id=' + row.id;
	}
}
function deleteItem(clickevent) {
	var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
	if (row) {
		$.messager.confirm('确认', '确定要删除选中机构信息吗?', function(r) {
			if (r) {
				$.post('deleteJiGou.action', {
					"id" : row.id
				}, function(result) {
					if (result.errorMsg) {
						$.messager.alert('出错啦', result.errorMsg);
					} else {
						$('#mydg').datagrid('reload'); // reload data
					}
				}, 'json');
			}
		});
	}
}
function saveItem() {
	$('#fm').form('form1', {
		url : url,
		onSubmit : function() {
			return $(this).form('validate');
		},
		success : function(result) {
			var result = eval('(' + result + ')');
			if (result.errorMsg) {
				$.messager.alert('出错啦', result.errorMsg);
			} else {
				$('#mydlg').dialog('close'); // close the dialog
				$('#mydg').datagrid('reload'); // reload data
			}
		}
	});
}

function doSearch() {
	$("#fmSearch").form('submit', {
		url : "JiGouSearch.action",
		success : function(jsonStr) {
			$('#mydg').datagrid('loadData', $.parseJSON(jsonStr));
		}
	});
}

function clearSearchFrm() {
	$("#fmSearch").form('clear');
	doSearch();
}

function formatAction(value, row, index) {
	return '<a href="javascript:void(0)" onclick="editItem(this)">修改</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" onclick="deleteItem(this)">删除</a>';
}
</script>

</body>
</html>