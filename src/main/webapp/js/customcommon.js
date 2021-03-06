function initializeWithJsonData(jsonData) {
	_.each(jsonData, function(value, key) {
		var el = $("#" + key);
		if(_.size(el) > 0){		
			if ($(el).hasClass("easyui-datebox")) {
				$(el).datebox("setValue", value);
			} else if ($(el).hasClass("easyui-datetimebox")) {
				$(el).datetimebox("setValue", value);
			} else if ($(el).hasClass("easyui-textbox")) {
				$(el).textbox("setValue", value);
			} else if ($(el).hasClass("easyui-numberbox")) {
				$(el).numberbox("setValue", value);
			} else if ($(el).hasClass("easyui-combobox")) {
				$(el).combobox("setValue", value);
			} else if ($(el).attr("type") == "checkbox") {
				$(el).attr("checked", (value == "on"));
			} else if (el[0].tagName == "DIV" || el[0].tagName == "SPAN") {
				$(el).html(value);
			} else {
				$(el).val(value);
			}
		}
	});
}

function makeElementsReadonly(idAry, jsonData){
	_.each(jsonData, function(value, key) {
		if(_.indexOf(idAry, key) != -1){
			var el = $("#" + key);
			if(_.size(el) > 0){
				if ((el[0].tagName == "INPUT" || el[0].tagName == "TEXTAREA") && el.attr("type")!="hidden") {
					$(el).parent().html(value);
				}
			}
		}
	});
}

//edit dategrid
(function($) {
	$.extend($.fn.datagrid.methods, {
		hasEditingRow: function (jq) {
			var rows = this.getRows(jq);
			return _.some(rows, function(el){
				return el.editing == true;
			});
		},
		getEditingRow: function (jq) {
			var rows = this.getRows(jq);
			return _.find(rows, function(el){
				return el.editing == true;
			});
		},
		getEditingRowIndex: function (jq) {
			var rowsEditFlag = _.pluck(this.getRows(jq), "editing");
			return _.indexOf(rowsEditFlag, true);
		},
		getEventTargetRowIndex: function (jq, target) {
			var tr = $(target).closest('tr.datagrid-row');			
			return parseInt(tr.attr('datagrid-row-index'));
		},
		getEventTargetRow: function (jq, target) {			
			var rowIndex = this.getEventTargetRowIndex(jq, target);
			if(_.isNaN(rowIndex)){
				return null;
			}else{
				var rows = this.getRows(jq);
				return rows[rowIndex];
			}			
		}
	});	
	
	var updateEditRow = function(jq, index, row) {
		$(jq).datagrid('updateRow', {
			index : index,
			row : {}
		});
	}
	$.extend($.fn.datagrid.defaults, {
		onBeforeEdit : function(index, row) {
			row.editing = true;
			updateEditRow(this,index,{});
		},
		onAfterEdit : function(index, row) {
			row.editing = false;
			updateEditRow(this,index,{});
		},
		onCancelEdit : function(index, row) {
			row.editing = false;
			updateEditRow(this,index,{});
		}
	});
	
	$.extend($.fn.datagrid.defaults.editors, {
		radiobox: {
			rowIndex:0,
			defaultValue:"",
			init: function(container, options){
				this.rowIndex += 1;
				this.defaultValue = options.defaultValue;	
				var self = this;			
				var html = "<span style='text-align:center;'>";
				_.each(options.values, function(value, index){
					html += '<input type="radio" id="myRadio_'+self.rowIndex+'_'+index+'" name="myRadio_'+self.rowIndex+'" value="'+value+'" /><label for="myRadio_'+self.rowIndex+'_'+index+'">'+value+"</label>";
					if(index < _.size(options.values)-1){
						html += "&nbsp;&nbsp;&nbsp;";
					}
				});
				html += "</span>";
				return $(html).appendTo(container);
			},
			destroy: function(target){
				$(target).remove();
			},
			getValue: function(target){
				var radioGroup = $(target).find(":radio[checked='checked']");
				var value = this.defaultValue;
				if(_.size(radioGroup)>0){
					value = $(radioGroup[0]).attr("value");
				}
				return value;
			},
			setValue: function(target, value){
				var radioGroup = $(target).find(":radio[value='"+value+"']");
				if(_.size(radioGroup)>0){
					$(radioGroup[0]).attr("checked","checked");
				}				
			},
			resize: function(target, width){
				$(target)._outerWidth(width);
			}
		}
	});
	
	$.extend($.fn.datagrid.defaults.editors, {
		radiobox_jianCe: {
			radioGroupIndex:0,
			statusFieldName:"txtCurStatus",
			actionFieldName:"txtCurAction",
			init: function(container, options){
				var html = "<span style='text-align:center;'></span>";
				return $(html).appendTo(container);
			},
			destroy: function(target){
				$(target).remove();
			},
			getValue: function(target){
				var fieldName = this.getTargetFieldName(target);
				var rowStatus = this.getTargetRowStatus(target);
				var rowAction = this.getTargetRowAction(target);
				
				if(fieldName == this.actionFieldName && (rowStatus == "未检测" || rowStatus == "未见异常")){
					//检测状态未检测、未见异常时实际处理项为空字符串
					rowAction = "";
				}
				
				var value = (fieldName == this.actionFieldName) ? rowAction : rowStatus;
				return value;
			},
			setValue: function(target, value){		
				var self = this;					
				var fieldName = this.getTargetFieldName(target);
				var rowIndex = this.getTargetRowIndex(target);
				var rows = this.getJianCeDatagrid().datagrid('getRows');
				var row = this.getTargetRow(target);
				
				var statusOptsStr = row.txtStatusItem;
				var statusCheckedOption = row.txtCurStatus;
				if(statusCheckedOption == ""){
					statusCheckedOption = statusOptsStr.split("|")[0];
				}
				var actionOptsStr = row.txtActionItem;
				var actionCheckedOption = row.txtCurAction;				
				var optionsStr = (fieldName == this.statusFieldName)? statusOptsStr : actionOptsStr;
				var checkedOption = (fieldName == this.statusFieldName)? statusCheckedOption : actionCheckedOption;
				
				if(fieldName == this.actionFieldName && (statusCheckedOption == "未检测" || statusCheckedOption == "未见异常")){
					//项目未检测或未见异常时实际操作选项不显示
					$(target).hide();
				}
				
				var opts = optionsStr.split("|");
				var html = "";
				_.each(opts, function(option, index){
					html += '<input type="radio" id="myRadio_'+self.radioGroupIndex+'_'+index+'" name="myRadio_'+self.radioGroupIndex+'" value="'+option+'" /><label for="myRadio_'+self.radioGroupIndex+'_'+index+'">'+option+"</label>";
					if(index < _.size(opts)-1){
						html += "&nbsp;&nbsp;";
					}
				});
				$(html).appendTo(target);
				
				var radioGroup = $(target).find(":radio[value='"+checkedOption+"']");
				if(_.size(radioGroup)>0){
					$(radioGroup[0]).attr("checked","checked");
				}
				
				var curRadioGroup = $('input[name="myRadio_'+self.radioGroupIndex+'"]');
				if(curRadioGroup){
					curRadioGroup.change(function(){
						var clickRow = rows[rowIndex];
						//alert(rowIndex + "------" + fieldName);	
						var statusEditor = self.getJianCeDatagrid().datagrid('getEditor', { index: rowIndex, field: 'txtCurStatus' });
						var actionEditor = self.getJianCeDatagrid().datagrid('getEditor', { index: rowIndex, field: 'txtCurAction' });
						var toolTipEditor = self.getJianCeDatagrid().datagrid('getEditor', { index: rowIndex, field: 'toolTip' });							
						
						if(fieldName == self.statusFieldName){
							var rowStatus = $(this).val();
							if(rowStatus == "未检测" || rowStatus == "未见异常"){
								$(actionEditor.target).hide();
								$(toolTipEditor.target).html("");
							}else{
								$(actionEditor.target).show();
								updateToolTip();
							}
						}else if(fieldName == self.actionFieldName){
							updateToolTip();
						}
						
						function updateToolTip(){
							var rowStatus = self.getTargetRowStatus(statusEditor.target);
							var rowAction = self.getTargetRowAction(actionEditor.target);
							//alert(rowStatus+ "---" + rowAction);
							
							if(rowAction.length > 0){//如果实际处理被选中
								var txtToolTip = (rowAction == "已更换")? clickRow.txtTip1 : clickRow.txtTip2; 
								if(rowStatus == "需清洁" && rowAction == "已清洁"){
									txtToolTip = clickRow.txtTip3;
								}else if(rowStatus == "需添加" && rowAction == "已添加"){
									txtToolTip = clickRow.txtTip4;
								}
								
								$(toolTipEditor.target).html(txtToolTip);
							}
						}						
					});	
				}
				
				this.radioGroupIndex += 1;
			},
			resize: function(target, width){
				$(target)._outerWidth(width);
			},
			getJianCeDatagrid: function(){
				return  $('#datagridJianCe');
			},
			getTargetRowIndex: function(target){
				var fieldNameTd = $(target).parentsUntil("td[field]").parent();
				var rowTr = $(fieldNameTd).parent();						
				var fieldName = $(fieldNameTd).attr("field");
				return $(rowTr).attr("datagrid-row-index");	
			},
			getTargetRow: function(target){				
				var rowIndex = this.getTargetRowIndex(target);	
				var rows = 	this.getJianCeDatagrid().datagrid('getRows');	
				return rows[rowIndex];
			},
			getTargetRowStatus: function(target){
				var rowIndex = this.getTargetRowIndex(target);	
				var statusEditor = this.getJianCeDatagrid().datagrid('getEditor', { index: rowIndex, field: 'txtCurStatus' });		
				var rowStatusRadio = $(statusEditor.target).find(":radio[checked='checked']");
				return $(rowStatusRadio[0]).attr("value");	
			},
			getTargetRowAction: function(target){	
				var rowIndex = this.getTargetRowIndex(target);			
				var actionEditor = this.getJianCeDatagrid().datagrid('getEditor', { index: rowIndex, field: 'txtCurAction' });							
				var rowActionRadio = $(actionEditor.target).find(":radio[checked='checked']");
				var rowAction = $(rowActionRadio[0]).attr("value");	
				if(!rowAction){
					//没有选中项时赋值空字符串
					rowAction = "";	
				}
				return rowAction;
			},
			getTargetFieldName: function(target){	
				var fieldNameTd = $(target).parentsUntil("td[field]").parent();
				var rowTr = $(fieldNameTd).parent();						
				return $(fieldNameTd).attr("field");
			}
		}
	});
	
	$.extend($.fn.datagrid.defaults.editors, {
		textReadOnly: {
			init: function(container, options){
				var input = $('<span></span>').appendTo(container);
				return input;
			},
			destroy: function(target){
				$(target).remove();
			},
			getValue: function(target){
				return $(target).html();
			},
			setValue: function(target, value){
				$(target).html(value);
			},
			resize: function(target, width){
				$(target)._outerWidth(width);
			}
		}
	});
	
	$.extend($.fn.textbox.defaults.inputEvents,{
		keydown:function(e){
			if(e.keyCode==13){
				var t=$(e.data.target);
				t.textbox("setValue",t.textbox("getText"));
				
				//extends
				var el = $(t).parentsUntil("form.searchform").last();
				if(el[0].tagName != "HTML"){
					doSearch();
				}
			}
		}
	});

})(jQuery);

		
function mergeGridColCells(grid, rowFildName) {
	var rows = grid.datagrid('getRows');
	if (rows.length < 1) {
		return;
	}
	
	var startIndex = 0;
	var endIndex = 0;
	$.each(rows, function(i, row) {
		if (row[rowFildName] == rows[startIndex][rowFildName]) {
			endIndex = i;
		} else {
			grid.datagrid('mergeCells', {
				index : startIndex,
				field : rowFildName,
				rowspan : endIndex - startIndex + 1
			});
			startIndex = i;
			endIndex = i;
		}
	});
	
	grid.datagrid('mergeCells', {
		index : startIndex,
		field : rowFildName,
		rowspan : endIndex - startIndex + 1
	});
}
	

//custom validate rule
(function($) {

$(document).ready(function() {	
	$.extend($.fn.validatebox.defaults.rules, {
		plateNumber : {
			validator : function(value, param) {
				return /^.{2}-\w{5}$/i.test($.trim(value));
			},
			message : '车牌号格式为 粤B-12345'
		},
		mobile : {
			validator : function(value) {
				return /^1[0-9]{10}$/i.test($.trim(value));
			},
			message : '手机号码格式错误.'
		},
		number: {
			validator: function (value, param) {
				return /^\d+$/.test(value);
			},
			message: '请输入数字'
		},
		date: {
			validator : function(value) {
				return /^[0-9]{4}[-][0-9]{2}[-][0-9]{2}$/i.test($
						.trim(value));
			},
			message : '曰期格式错误,如2012-09-11.'
		},
		exactLength: {
			validator : function(value, param) {
				return param[0] == value.length;
			},
			message : '请输入{0}位字符.'
		},
		maxLength: {
			validator : function(value, param) {
				return param[0] >= value.length;
			},
			message : '请输入最多{0}位字符.'
		},
		minLength: {
			validator : function(value, param) {
				return param[0] >= value.length;
			},
			message : '请输入最少{0}位字符.'
		},
		length : {
			validator : function(value, param) {
				return value.length >= param[0]
						&& param[1] >= value.length;
			},
			message : '请输入{0}-{1}位字符.'
		},
		email : {
			validator : function(value) {
				return /^[a-zA-Z0-9_+.-]+\@([a-zA-Z0-9-]+\.)+[a-zA-Z0-9]{2,4}$/i
						.test($.trim(value));
			},
			message : '电子邮箱格式错误.'
		},
		equals : {
			validator : function(value, param) {
				return value == $(param[0]).val();
			},
			message : '字段不相同.'
		}
	});
});

})(jQuery);

function toggleSearchPanel() {
	$("#searchPanel").toggle();
}

function reloadCurentPage(){
	location.reload();	
}

//-----------维修工单管理--------------
 function refreshGongDan(gongDanId) {
	 parent.window.location.href = 'saleAfterIndex.action?saleAfterWeiXiuGuid=' + gongDanId + '&d=' + new Date();
 }
 
function updateGongDanStatus(saleAfterWeiXiuGuid, newGongDanStatus){
	$.messager.confirm('提示', '确认<span  style="color: blue; font-weight: bold;">'+newGongDanStatus+'</span>后本页面信息不能被修改，确定要'+newGongDanStatus+'吗?', function(r) {
		if (r) {
			$.post('updateGongDanStatus.action', {
				"saleAfterWeiXiuGuid" : saleAfterWeiXiuGuid,
				"gongDanStatus" : newGongDanStatus
			}, function(result) {
				if (result.errorMsg) {
					$.messager.alert('出错啦', result.errorMsg);
				} else {
					refreshGongDan(saleAfterWeiXiuGuid);
				}
			}, 'json');
		}
	});
}
 
function revertGongDanStatus(saleAfterWeiXiuGuid){
	$.messager.confirm('提示', '确认要回滚工单状态吗?', function(r) {
		if (r) {
			$.post('revertGongDanStatus.action', {
				"saleAfterWeiXiuGuid" : saleAfterWeiXiuGuid
			}, function(result) {
				if (result.errorMsg) {
					$.messager.alert('出错啦', result.errorMsg);
				} else {
					refreshGongDan(saleAfterWeiXiuGuid);
				}
			}, 'json');
		}
	});
}

function updateWanJianStatus(target, status) {
	$.messager.confirm('提示', '确定要' + status + '吗?', function(r) {
		if (r) {
			var editRow = myTable.datagrid('getEventTargetRow', target);
			editRow.txtWanJianStatus = status;
			$.post("updateGongDanWeiXiuXiangMuWhenWanJian.action",
				{
					"easyUiJSonData" : JsonToString(editRow)
				},
				function(result) {
					if (result.errorMsg) {
						$.messager.alert('出错啦',result.errorMsg);
						myTable.datagrid('cancelEdit',rowIndex);
					} else {
						myTable.datagrid('reload');
					}
				}, 'json');
		}
	});
}

function confirmAllWanJian(saleAfterWeiXiuGuid) {
	$.messager.confirm('提示', '确定要完检全部项目吗?', function(r) {
		if (r) {
			$.post("wanJianAllGongDanWeiXiuXiangMu.action",
				{
					"saleAfterWeiXiuGuid" : saleAfterWeiXiuGuid
				},
				function(result) {
					if (result.errorMsg) {
						$.messager.alert('出错啦',result.errorMsg);
					} else {
						myTable.datagrid('reload');
					}
				}, 'json');
		}
	});
}



function showWeiXiuLiShi(saleAfterGuid) {
	z = window.open('../saleAfterManage/weiXiuLiShiDetail.action?saleAfterWeiXiuGuid=' + saleAfterGuid + '&d=' + new Date(), '维修历史查看', 'height=900, width=720, top=100, left=100, toolbar=no, menubar=no, scrollbars=yes, resizable=yes,location=no, status=no')
	z.focus();
}

//-----------入库单管理--------------
function saveRuKuDan() {
	$("#form1").form('submit',{
		url : "saveRuKuDan.action",
		success : function(result) {
			var result = eval('(' + result + ')');
			if (result.statusCode == "success") {
				$.messager.alert('提示', '保存信息成功！', 'info', function() {
					refreshRuKuDan(result.info);
				});
			} else if (result.statusCode == "failed") {
				$.messager.alert('提示', '保存信息失败！');
			}
		}
	});
}

function deleteRuKuDan() {
	$.messager.confirm('提示', "本操作将删除入库单及其明细，您确定要删除吗？", function(r) {
		if (r) {
			$.post('deleteRuKuDan.action', {
				"ruKuDanGuid" : ruKuDanGuid
			}, function(result) {
				if (result.errorMsg) {
					$.messager.alert('出错啦', result.errorMsg);
				}
			}, 'json');
		}
	});
}


	
		
function openCustomerReserveDialog(cheLiangId) {			
	var sURL = '../saleAfterManage/customerReservationInfo.action?txtCheLiangId='+ cheLiangId +'&d=' + new Date();
	var sFeatures = "dialogWidth:600px;dialogHeight:400px;center:yes;help:no;resizable:no;scroll:yes;status:no;";
	window.showModalDialog(sURL, window, sFeatures);
	
	window.opener = null;
	window.close();
}

//----------工单检测-------------
function getRealJianCeOptionValue(value) {
	var infoAry = value.split("-");
	if(_.size(infoAry) == 2){
		return infoAry[1];	
	}else{
		return infoAry[0].split("|")[0];	
	}			
}

//----------报表管理-------------	
function doSearchForToday(){
	doSearchForDate(getTodayDateStr(), getTodayDateStr());
}

function doSearchForCurMonth(){
	doSearchForDate(getCurentMonthFirstDayDateStr(), getTodayDateStr());
}

function doSearchForDate(dateBegin, dateEnd){
	$("#fmSearch").form('clear');
	$("#dateBegin").datebox("setValue",dateBegin);
	$("#dateEnd").datebox("setValue",dateEnd);
	doSearch();			
}
function getTodayDateStr(){
	var curDate = new Date();
	var y = curDate.getFullYear();
	var m = curDate.getMonth()+1;
	var d = curDate.getDate();
	return y+'-'+(m<10?('0'+m):m)+'-'+(d<10?('0'+d):d);	
}

function getCurentMonthFirstDayDateStr(){
	var curDate = new Date();
	var y = curDate.getFullYear();
	var m = curDate.getMonth()+1;
	return y+'-'+(m<10?('0'+m):m)+'-01';	
}