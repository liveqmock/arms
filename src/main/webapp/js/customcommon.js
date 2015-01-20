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
		} else {
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
			var rowIndex = getEventTargetRowIndex(jq, target);
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