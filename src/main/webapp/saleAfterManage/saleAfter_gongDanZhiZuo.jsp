<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head><title>

</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><script src="../js/frame/underscore-min.js" type="text/javascript"></script><script src="../js/customcommon.js" type="text/javascript"></script><link href="../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>

<body>
    <form name="form1" method="post" id="form1">
    <div style="margin-top:5px;margin-left:5px;margin-right:5px;">     
        <table border="0" style="width:900px" >
         <!--按钮区域 sart-->
          <tr>
          <td align="right">
          <a onClick="return printThis();" id="lnkPrint" class="easyui-linkbutton" href="javascript:__doPostBack('lnkPrint','')">打印</a>
             
             
             <a onClick="return addWeiXiuTaoCan();" id="lnkTaoCan" class="easyui-linkbutton" href="javascript:__doPostBack('lnkTaoCan','')">新增套餐</a>
             
             
             <a onClick="return zhangTaoMdfSave();" id="lnkSave" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSave','')">保存</a>
             
             
             
             <a onClick="return winClose();" id="lnkCancel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkCancel','')">关闭</a>
          </td>
          </tr>
         <!--按钮区域 end-->
        </table>
        
      <table id="datagridXiangMu" class="easyui-datagrid" data-options="url:'queryGongDanWeiXiuXiangMu.action?saleAfterWeiXiuGuid=<s:property value='saleAfterWeiXiuGuid' />',toolbar:'#tb',singleSelect:true,rownumbers:true,showFooter:true">
            <thead>
                <tr> <th field="txtGongDuanName" width="100" data-options="editor:{type:'combobox',options:{valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/weiXiuGongDuanOption.action'}}">工段</th>
                    <th field="txtXiangMuId" width="150">项目编号</th>
                    <th field="txtWeiXiuNeiRong" width="300">维修内容</th>
                    <th field="txtGongShi" width="80" data-options="align:'right',editor:{type:'numberbox',options:{precision:2,required: true,missingMessage:'工时必须填写'}}">工时</th>
                    <th field="txtGongShiFei" width="100" data-options="align:'right',editor:{type:'numberbox',options:{precision:2,required:true,missingMessage:'工时费必须填写'}}">工时费</th>
                    <th field="ddlZhangTao" width="150" data-options="editor:{type:'combobox',options:{valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/zhangTaoOption.action'}}">帐套</th>
                    <th field="action" width="200" align="center" formatter="formatAction">操作</th>
                </tr>
            </thead>
        </table>
         <div id="tb" style="height:auto">
        <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" onClick="addItemList()">添加维修项目</a>
        </div>       

        <div  style="height:1px;"></div>
        
      <table id="datagridWuLiao" class="easyui-datagrid" data-options="url:'queryGongDanWeiXiuWuLiao.action?saleAfterWeiXiuGuid=<s:property value='saleAfterWeiXiuGuid' />',toolbar:'#tb2',singleSelect:true,rownumbers:true,showFooter:true">
            <thead>
                <tr> 
                    <th field="txtWuLiaoId" width="150">商品编号</th>
                    <th field="txtWuLiaoName" width="300">商品名称</th>
                    <th field="txtRegQty" width="80" data-options="align:'right',editor:{type:'numberbox',options:{precision:2,required: true,missingMessage:'所需数量必须填写'}}">所需数量</th>
                    <th field="txtTakeQty" width="80" data-options="align:'right',editor:{type:'numberbox',options:{precision:2,required: true,missingMessage:'领用数量必须填写'}}">领用数量</th>
                    <th field="txtReturnQty" width="80" data-options="align:'right',editor:{type:'numberbox',options:{precision:2,required: true,missingMessage:'退货数量必须填写'}}">退货数量</th>
                    <th field="txtPrice" width="100">单价</th>
                    <th field="ddlZhangTao" width="150" data-options="editor:{type:'combobox',options:{valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/zhangTaoOption.action'}}">帐套</th>
                    <th field="action" width="200" align="center" formatter="formatAction2">操作</th>
                </tr>
            </thead>
        </table>
         <div id="tb2" style="height:auto">
        <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" onClick="addItemList2()">添加物料</a>
        </div>
		
		
		
      <table border="0" cellpadding="0" cellspacing="0">
        <tr>
        <td>
          <input name="btnWeiXiuWuLiao" type="button" id="btnWeiXiuWuLiao" value="物料选择" style="width:60px;height:30px;font-size:12px;" onClick="addWeiXiuWuLiaoList()" />



         </td>
        </tr>
        </table>
        <table  border="1" style="border-collapse:collapse;border:1px solid #d6d3ce;width:100%" >
        <!--维修物料 start-->
        
          <tr>
           <td  style="width:30px;">NO.</td>
           <td  style="width:200px;">商品编号</td>
           <td  style="width:240px;">商品名称</td>
           <td width="60" style="text-align:right;">所需数量</td>
           <td  width="60" style="text-align:right;">领用数量</td>
           <td  width="60" style="text-align:right;">退货数量</td>
           <td  width="60" style="text-align:right;">单价</td>
           <td  width="120">帐套</td><td  width="150">子帐套</td><td width="10"></td>
          </tr>
         
         <tr  id="abaa490a-116c-44b2-b1da-7cbba0615c23Tr">
           <td  onclick="zhangTaoMdf('abaa490a-116c-44b2-b1da-7cbba0615c23','wuLiao')"   style="text-align:center;">1
           <input type="hidden" name="wuLiao" value="abaa490a-116c-44b2-b1da-7cbba0615c23" />
           </td>
           <td onClick="zhangTaoMdf('abaa490a-116c-44b2-b1da-7cbba0615c23','wuLiao')" >0415231090</td><td onClick="zhangTaoMdf('abaa490a-116c-44b2-b1da-7cbba0615c23','wuLiao')" >机油滤清器滤芯组件</td>
           <td  style="text-align:right;">
           <input  id='abaa490a-116c-44b2-b1da-7cbba0615c23RegQty' style="display:none;width:40px;" 
           value ="0.00" 
           class="easyui-numberbox" data-options="min:0,max:90,precision:2"  /> 
           <span id="abaa490a-116c-44b2-b1da-7cbba0615c23RegQtyB">0.00</span>
           </td>
           <td onClick="zhangTaoMdf('abaa490a-116c-44b2-b1da-7cbba0615c23','wuLiao')"   style="text-align:right;">1.00</td>
           <td onClick="zhangTaoMdf('abaa490a-116c-44b2-b1da-7cbba0615c23','wuLiao')"  style="text-align:right;">0.00</td>
           <td onClick="zhangTaoMdf('abaa490a-116c-44b2-b1da-7cbba0615c23','wuLiao')"   style="text-align:right;">61.00</td>
           <td><select id='abaa490a-116c-44b2-b1da-7cbba0615c23ZhangTao' style="display:none;"  onchange="subZhangTaoMdf('abaa490a-116c-44b2-b1da-7cbba0615c23')" ></select>
           <span id="abaa490a-116c-44b2-b1da-7cbba0615c23ZhangTaoB">厂家保修</span></td>
           <td><select id='abaa490a-116c-44b2-b1da-7cbba0615c23SubZhangTao' style="display:none;width:75px;" ></select> 
           <span id="abaa490a-116c-44b2-b1da-7cbba0615c23SubZhangTaoB'"></span></td>
           <td width="10">           <img src="../image/delete.gif" alt="del" onClick="delWeiXiuWuLiao('abaa490a-116c-44b2-b1da-7cbba0615c23')"  /></td>
          </tr>
         
          <tr>
           <td></td>
           <td>合计</td><td></td>
           <td  style="text-align:right;">0.00</td>
           <td  style="text-align:right;">18.00</td>
           <td colspan="4">
           需求费用:0.0000 预估费用:1672.0000
           </td> 
           <td width="10"></td>
          </tr>
         
        <!--维修物料 end-->
        </table>

    </div>
    </form>

     
    <script language="javascript" type="text/javascript"> 
		var saleAfterGuid = '<s:property value="saleAfterWeiXiuGuid" />'; 
		var myTable = $('#datagridXiangMu');
		 
        function addItemList() {
			var sURL = "../saleAfterManage/saleAfterGongDanZhiZuoAddWeiXiuXiangMu.action?saleAfterGuid=" +saleAfterGuid+ "&d=" + new Date();
			var sFeatures = "dialogWidth:750px;dialogHeight:670px;center:yes;help:no;resizable:no;scroll:yes;status:no;";            
			window.showModalDialog(sURL, window, sFeatures);
			myTable.datagrid('reload');
        }
		
		function formatAction(value,row,index){
			if(row.txtGongDuanName == "合计"){
				return "";
			}else{
				if (row.editing){
					var s = '<a href="#" onclick="saverow(this);return false;">保存修改</a>&nbsp;&nbsp;&nbsp;&nbsp;';
					var c = '<a href="#" onclick="cancelrow(this);return false;">取消修改</a>';
					return s+c;
				} else {
					var e = '<a href="#" onclick="editrow(this);return false;">编辑本行</a>&nbsp;&nbsp;&nbsp;&nbsp;';
					var d = '<a href="#" onclick="deleterow(this);return false;">删除本行</a>';
					return e+d;
				}
			}
		}
		
		function getTargetRowIndex(target){			
			return myTable.datagrid('getEventTargetRowIndex', target);
		}
		
		function editrow(target){
			if(myTable.datagrid('hasEditingRow')){
				$.messager.alert('提示','请先处理尚未完成的编辑行信息');
			}else{
				myTable.datagrid('beginEdit', getTargetRowIndex(target));
			}			
		}
		
		function deleterow(target){
			if(myTable.datagrid('hasEditingRow')){
				$.messager.alert('提示','请先处理尚未完成的编辑行信息');
			}else{
				$.messager.confirm('提示','确定要删除本行信息吗?',function(r){
					if (r){
						var rowIndex = getTargetRowIndex(target);
						var editRow = myTable.datagrid('getRows')[rowIndex];
						$.post('deleteGongDanWeiXiuXiangMu.action', {
							"txtWeiXiuXiangMuId" : editRow.txtWeiXiuXiangMuId
						}, function(result) {
							if (result.errorMsg) {
								$.messager.alert('出错啦', result.errorMsg);
								myTable.datagrid('cancelEdit', rowIndex);
							} else {
								myTable.datagrid('reload');
							}
						}, 'json');
					}
				});
			}			
		}
		
		function saverow(target){
			var rowIndex = getTargetRowIndex(target);
			if(myTable.datagrid('validateRow', rowIndex)){
				myTable.datagrid('endEdit', rowIndex);
				var editRow = myTable.datagrid('getRows')[rowIndex];
				$.post('updateGongDanWeiXiuXiangMu.action', {
					"easyUiJSonData" : JsonToString(editRow)
				}, function(result) {
					if (result.errorMsg) {
						$.messager.alert('出错啦', result.errorMsg);
						myTable.datagrid('cancelEdit', rowIndex);
					} else {
						myTable.datagrid('reload');
					}
				}, 'json');
			}else{
				$.messager.alert('提示','请先按照提示填写行信息');	
			}
		}
		
		function cancelrow(target){
			myTable.datagrid('cancelEdit', getTargetRowIndex(target));
		}
		
		//-------------------------Datagrid2------------------------------------
		var myTable2 = $('#datagridWuLiao');
		 
        function addItemList2() {
            var sURL = "../saleAfterManage/saleAfter_gongDanZhiZuoAddWeiXiuWuLiao.aspx?baoXianFlag=0&saleAfterGuid=" +saleAfterGuid+ "&d=" + new Date();
            var sFeatures = "dialogWidth:750px;dialogHeight:550px;center:yes;help:no;resizable:no;scroll:yes;status:no;";     
			window.showModalDialog(sURL, window, sFeatures);
			myTable2.datagrid('reload');
        }
		
		function formatAction2(value,row,index){
			if(row.txtWuLiaoId == "合计"){
				return "";
			}else{
				if (row.editing){
					var s = '<a href="#" onclick="saverow2(this);return false;">保存修改</a>&nbsp;&nbsp;&nbsp;&nbsp;';
					var c = '<a href="#" onclick="cancelrow2(this);return false;">取消修改</a>';
					return s+c;
				} else {
					var e = '<a href="#" onclick="editrow2(this);return false;">编辑本行</a>&nbsp;&nbsp;&nbsp;&nbsp;';
					var d = '<a href="#" onclick="deleterow2(this);return false;">删除本行</a>';
					return e+d;
				}
			}
		}
		
		function getTargetRowIndex2(target){			
			return myTable2.datagrid('getEventTargetRowIndex', target);
		}
		
		function editrow2(target){
			if(myTable2.datagrid('hasEditingRow')){
				$.messager.alert('提示','请先处理尚未完成的编辑行信息');
			}else{
				myTable2.datagrid('beginEdit', getTargetRowIndex2(target));
			}			
		}
		
		function deleterow2(target){
			if(myTable2.datagrid('hasEditingRow')){
				$.messager.alert('提示','请先处理尚未完成的编辑行信息');
			}else{
				$.messager.confirm('提示','确定要删除本行信息吗?',function(r){
					if (r){
						var rowIndex = getTargetRowIndex2(target);
						var editRow = myTable2.datagrid('getRows')[rowIndex];
						$.post('deleteGongDanWeiXiuWuLiao.action', {
							"txtWeiXiuWuLiaoId" : editRow.txtWeiXiuWuLiaoId
						}, function(result) {
							if (result.errorMsg) {
								$.messager.alert('出错啦', result.errorMsg);
								myTable2.datagrid('cancelEdit', rowIndex);
							} else {
								myTable2.datagrid('reload');
							}
						}, 'json');
					}
				});
			}			
		}
		
		function saverow2(target){
			var rowIndex = getTargetRowIndex2(target);
			if(myTable2.datagrid('validateRow', rowIndex)){
				myTable2.datagrid('endEdit', rowIndex);
				var editRow = myTable2.datagrid('getRows')[rowIndex];
				$.post('updateGongDanWeiXiuWuLiao.action', {
					"easyUiJSonData" : JsonToString(editRow)
				}, function(result) {
					if (result.errorMsg) {
						$.messager.alert('出错啦', result.errorMsg);
						myTable2.datagrid('cancelEdit', rowIndex);
					} else {
						myTable2.datagrid('reload');
					}
				}, 'json');
			}else{
				$.messager.alert('提示','请先按照提示填写行信息');	
			}
		}
		
		function cancelrow2(target){
			myTable2.datagrid('cancelEdit', getTargetRowIndex2(target));
		}
		
		
				
        function printThis() {
            window.open("saleAfter_WeiXiuJieDaiPrint.aspx?saleAfterGuid=" +saleAfterGuid+ "&d=" + new Date());
            return false;
        }

        function winClose() {
            if (!confirm("您确定要退出？")) {
                return false;
            }
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