
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>

</title>

    <style type="text/css" >
       td
       {
       	height:25px;
       	}
     </style>
 <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=17a48e594e374bee9428a515058eb666" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=17a48e594e374bee9428a515058eb666" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=17a48e594e374bee9428a515058eb666" type="text/javascript"></script><link href="../style/common.css?v=17a48e594e374bee9428a515058eb666" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="saleAfter_weiXiuXiangMuAdd.aspx?weiXiuXiangMuId=0&amp;d=Mon+Jan+05+2015+16%3a10%3a38+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTE0Nzk3NTkzOQ9kFgICAQ9kFgICAw8QDxYGHg1EYXRhVGV4dEZpZWxkBQF2Hg5EYXRhVmFsdWVGaWVsZAUBdh4LXyFEYXRhQm91bmRnZBAVBgbmnLrnlLUG5L+d5YW7BumSo+mHkQbnvo7lrrkG5Za35ryGABUGBuacuueUtQbkv53lhbsG6ZKj6YeRBue+juWuuQbllrfmvIYAFCsDBmdnZ2dnZ2RkZPl8ibqn+n8ZsR9BV5LyDcv5pf4c" />
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


    <div  style="position:absolute;top:30px;left:50px">  
      
      <table border="0" cellpadding="0" cellspacing="0" width="280px" >
       <tr>
       <td><span class="requireSpan">*&nbsp;</span>维修编号:</td>
       <td>
       <input name="txtWeiXiuXiangMuBianHao" type="text" maxlength="13" id="txtWeiXiuXiangMuBianHao" />
       </td>
       </tr>
       <tr>
       <td><span class="requireSpan">*&nbsp;</span>所属工段:</td>
       <td>
       <select name="ddlSuoShuGongDuan" id="ddlSuoShuGongDuan" style="width:138px;">
	<option value="机电">机电</option>
	<option value="保养">保养</option>
	<option value="钣金">钣金</option>
	<option value="美容">美容</option>
	<option value="喷漆">喷漆</option>
	<option selected="selected" value=""></option>

</select>
       </td>
       </tr>
       <tr>
       <td><span class="requireSpan">*&nbsp;</span>适用车系:</td>
       <td>
       <input name="txtShiYongCheXing" type="text" maxlength="15" id="txtShiYongCheXing" />
       </td>
       </tr>
       <tr>
       <td><span class="requireSpan">*&nbsp;</span>工时:</td>
       <td><input name="txtGongShi" type="text" id="txtGongShi" class="easyui-numberbox" data-options="min:0,max:9000,precision:2,required:true" /> </td>
       </tr>
       <tr>
       <td><span class="requireSpan">*&nbsp;</span>维修内容:</td>
       <td style="height:55px;">
       <textarea name="txtWeiXiuNeiRong" rows="2" cols="20" id="txtWeiXiuNeiRong"></textarea>
       </td>
       </tr>
 
       <tr>
       <td colspan="2" align="center">
           <br />
           
           <a onclick="return saveCheck(1);" id="btnSave" class="easyui-linkbutton" href="javascript:__doPostBack('btnSave','')">保存</a>
           
           
           <a onclick="return closeWin();" id="btnCancel" class="easyui-linkbutton" href="javascript:__doPostBack('btnCancel','')">取消</a>
         
       </td>
       </tr>


      </table>
       
    </div>

    <!--下属物料 start-->
    <div style="float:right;margin-right:3px;margin-top:5px;" >
        <table id="dg2"    class="easyui-datagrid"    
            data-options="rownumbers:true,singleSelect:true,pagination:true"   style="height:300px;width:450px;"    >
		<thead>
			<tr>
                <th  data-options="field:'shopThisId',checkbox:true"></th> 
                <th  data-options="field:'shopId'" sortable="true">商品编号</th>
                <th  data-options="field:'shopName'">商品名称</th>
                <th  data-options="field:'regQty'">数量</th>
                <th  data-options="field:'shopSalePrice'">售价</th>
                <th  data-options="field:'priceAll'">合计</th>
         		<th  data-options="field:'deptName2',formatter:shopDel">删除</th>
       
            </tr>
		</thead>
	</table>
    </div>
    <!--下属物料 end-->

<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="7DF6DAEE" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWDQLOze56AtCNmQwC9KvnwgwCkfrP4A4Cn8fU4wICwJq3tQEC68ajkQ4C4oKwhwEC9rKnvAMCwsTowgsC+oWSwQwCnLe4kgwCkPTP6wXeb7D6rbmjPvrmtun7BhdwnIujGQ==" />
</div></form>

<script language="javascript" type="text/javascript" >

    var btnFlag = "0";
    function saveCheck() {
        //必填项验证
        var err = "";
        if (btnFlag == "0") { btnFlag = "1"; } else {return false;}
        if ($("#txtWeiXiuXiangMuBianHao").val() == "") { err += "维修项目编号不能为空！"; }
        if ($("#ddlSuoShuGongDuan").val() == "") { err += "所属工段不能为空！"; }
        if ($("#txtShiYongCheXing").val() == "") { err += "适用车型不能为空！"; }
        if ($("#txtGongShi").val() == "") { err += "工时不能为空！"; }
        if ($("#txtWeiXiuNeiRong").val() == "") { err += "维修内容不能为空！"; }

        if ($("#txtWeiXiuNeiRong").val().length > 300) {err += "维修内容过长！";}

        if (err == "") {
          __doPostBack('btnSave','');
        } else {
            alert(err);
            btnFlag = "0";
        }

        return false; 
    }

    function closeWin() {
        parWinClose();
        return false;
    }

    function addShop() {
        var u = "../webSetup/saleAfter_weiXiuXiangMuShopAdd.aspx?weiXiuXiangMuId=0&d=" + new Date();
        var SizeZ = "dialogWidth:750px;dialogHeight:550px;center:yes;help:no;resizable:no;scroll:yes;status:no;";
        var returnValue = window.showModalDialog(u, '', SizeZ);
        //关闭当前窗体
        if (returnValue != undefined && returnValue != "") {

        }
        location.href = "saleAfter_weiXiuXiangMuAdd.aspx?weiXiuXiangMuId=0&d=" + new Date();
        return false;

    }

    function delWeiXiuXiangMuWuLiao(shopId) {
      
        $.get("saleAfter_weiXiuXiangMuExec.aspx?d=" + new Date(), {
            type: "weiXiuXiangMuSetWuLiaoDel",
            weiXiuXiangMuId: "0",
            shopId: shopId,
        }, function (data) {
            if (data == "ok") {
                location.href = "saleAfter_weiXiuXiangMuAdd.aspx?weiXiuXiangMuId=0&d=" + new Date();
            }
        });
    }

    function shopDel(val, row, index) {
        if (row.shopId == undefined) { return ""; }
        return "<img src='../image/delete.gif'  onclick=delWeiXiuXiangMuWuLiao('" + row.shopId + "') />";

    }

    var jsonStr = '';
    jsonStrData = $.parseJSON(jsonStr);
    $(function () {
        $('#dg2').datagrid({ loadFilter: pagerFilter }).datagrid('loadData', jsonStrData);
    });


    function pagerFilter(data) {
        if (typeof data.length == 'number' && typeof data.splice == 'function') {	// is array
            data = {
                total: data.length,
                rows: data
            }
        }
        var dg = $(this);
        var opts = dg.datagrid('options');
        var pager = dg.datagrid('getPager');
        pager.pagination({
            onSelectPage: function (pageNum, pageSize) {
                opts.pageNumber = pageNum;
                opts.pageSize = pageSize;
                pager.pagination('refresh', {
                    pageNumber: pageNum,
                    pageSize: pageSize
                });
                dg.datagrid('loadData', data);
            }
        });
        if (!data.originalRows) {
            data.originalRows = (data.rows);
        }
        var start = (opts.pageNumber - 1) * parseInt(opts.pageSize);
        var end = start + parseInt(opts.pageSize);
        data.rows = (data.originalRows.slice(start, end));
        return data;
    }
</script>




</body>
</html>