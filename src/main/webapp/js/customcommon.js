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

function initRowEditDatagrid(datagridObj) {
	$(datagridObj).datagrid({
		onBeforeEdit : function(index, row) {
			row.editing = true;
			updateActions(datagridObj,index);
		},
		onAfterEdit : function(index, row) {
			row.editing = false;
			updateActions(datagridObj,index);
		},
		onCancelEdit : function(index, row) {
			row.editing = false;
			updateActions(datagridObj,index);
		}
	});
}

function updateActions(datagridObj,index) {
	$(datagridObj).datagrid('updateRow', {
		index : index,
		row : {}
	});
}
function getDatagridRowIndex(target) {
	var tr = $(target).closest('tr.datagrid-row');
	return parseInt(tr.attr('datagrid-row-index'));
}