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

(function($) {
	$.extend($.fn.datagrid.methods, {
		hasEditingRow: function (jq) {
			var rows = this.getRows(jq);
			return _.some(rows, function(el){
				return el.editing == true;
			});
		},
		getEventTargetRow: function (jq, clickevent) {
			var tr = $(clickevent).closest('tr.datagrid-row');			
			var rowIndex = parseInt(tr.attr('datagrid-row-index'));
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

function toggleSearchPanel() {
	$("#searchPanel").toggle();
}