function initFormData(formJson) {
	_.each(formJson, function(value, key) {
		var el = $("#"+key);
		if($(el).attr("type") == "checkbox"){
			if(value == "on"){
				$(el).attr("checked",true);	
			}
		}else if($(el).hasClass("easyui-datetimebox") || $(el).hasClass("easyui-datebox")){
			$(el).datebox("setValue", value);
		}else{
			$(el).val(value);
		}
	});
}
