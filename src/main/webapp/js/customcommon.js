function initFormData(formJson) {
	_.each(formJson, function(value, key) {
		var el = $("#" + key);
		if ($(el).attr("type") == "checkbox") {
			if (value == "on") {
				$(el).attr("checked", true);
			}
		} else if ($(el).hasClass("easyui-datetimebox")
				|| $(el).hasClass("easyui-datebox")) {
			$(el).datebox("setValue", value);
		} else if ($(el).hasClass("easyui-textbox")) {
			$(el).textbox("setValue", value);
		} else if ($(el).hasClass("easyui-numberbox")) {
			$(el).numberbox("setValue", value);
		} 
		else if ($(el).hasClass("easyui-combobox")) {
			$(el).combobox("setValue", value);
		}else {
			$(el).val(value);
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
})(jQuery);


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


//-----------维修工单管理--------------
function updateGongDanStatus(saleAfterWeiXiuGuid, newGongDanStatus){
	$.messager.confirm('提示', newGongDanStatus+'后本页面信息不能被修改，确定要'+newGongDanStatus+'吗?', function(r) {
		if (r) {
			$.post('updateGongDanStatus.action', {
				"saleAfterWeiXiuGuid" : saleAfterWeiXiuGuid,
				"txtGongDanStatus" : newGongDanStatus
			}, function(result) {
				if (result.errorMsg) {
					$.messager.alert('出错啦', result.errorMsg);
				} else {
					parent.refreshPage(saleAfterWeiXiuGuid);
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

//-----------入库单管理--------------
function saveRuKuDan() {
	$("#form1").form('submit',{
		url : "saveRuKuDan.action",
		success : function(result) {
			var result = eval('(' + result + ')');
			if (result.statusCode == "success") {
				$.messager
						.alert(
								'提示',
								'保存信息成功！',
								'info',
								function() {
									refreshPage(result.info);
								});
			} else if (result.statusCode == "failed") {
				$.messager.alert('提示', '保存信息失败！');
			}
		}
	});
}

function updateRuKuDanStatus(ruKuDanGuid, newStatus){
	$.messager.confirm('提示', '确定要'+newStatus+'吗?', function(r) {
		if (r) {
			$.post('updateRuKuDanStatus.action', {
				"txtGuid" : ruKuDanGuid,
				"txtStatus" : newStatus
			}, function(result) {
				if (result.errorMsg) {
					$.messager.alert('出错啦', result.errorMsg);
				} else {
					refreshPage(ruKuDanGuid);
				}
			}, 'json');
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