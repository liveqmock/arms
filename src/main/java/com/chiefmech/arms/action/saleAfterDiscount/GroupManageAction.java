package com.chiefmech.arms.action.saleAfterDiscount;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.apache.commons.lang.StringUtils;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.entity.GroupPrivilege;
import com.chiefmech.arms.entity.option.OptionBean;
import com.chiefmech.arms.service.CommonDataService;
import com.chiefmech.arms.service.GroupService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/saleAfterDiscount")
@Controller()
@Scope("prototype")
public class GroupManageAction extends BaseActionSupport
		implements
			ModelDriven<GroupPrivilege> {
	@Resource()
	private GroupService groupService;
	@Resource()
	private CommonDataService commonDataService;

	private GroupPrivilege item = new GroupPrivilege();
	private List<OptionBean> privilegesLst;
	private List<String> groupPrivilegesLst;

	@Action(value = "groupManage", results = {@Result(name = "input", location = "groupManage.jsp")})
	public String groupManage() {
		privilegesLst = commonDataService.getOptionBean("Remark");
		return INPUT;
	}

	@Action(value = "queryGroup")
	public void querygroup() {
		if (StringUtils.isBlank(item.getGroupName())) {
			item.setGroupName("前台");
		}
		this.transmitJson(groupService.getGroupPrivilegesEasyUiJSon(item));
	}
	@Action(value = "insertGroup")
	public void insertItem() {
		String jsonStr = "";
		String[] remark = item.getRemark().split(",");
		jsonStr = insertOrUpdate(remark, jsonStr);
		this.transmitJson(jsonStr);
	}

	@Action(value = "selectItem")
	public void selectItem() {
		groupPrivilegesLst = groupService.selectGroupPrivilegesItem(item
				.getGroupName());
		String lstJson = JSONArray.fromObject(groupPrivilegesLst).toString();
		this.transmitJson(lstJson);
	}

	@Action(value = "updateGroup")
	public void updateItem() {
		String jsonStr = "";
		String[] remark = item.getRemark().split(",");
		groupService.deleteGroupPrivileges(item.getGroupName());
		jsonStr = insertOrUpdate(remark, jsonStr);
		this.transmitJson(jsonStr);
	}

	@Action(value = "deleteGroup")
	public void deleteItem() {
		int rowAffected = groupService.deleteGroupPrivileges(item
				.getGroupName());
		String jsonStr = getJsonResponse(rowAffected, "删除数据失败");
		this.transmitJson(jsonStr);
	}

	@Action(value = "selectPrivilege")
	public void selectPrivilege() {
		String remak = groupService.getPrivilegeByRemark(item.getRemark());
		String jsonStr = String.format("{\"errorMsg\":\"%s\"}", remak);
		this.transmitJson(jsonStr);
	}

	private String getJsonResponse(int rowAffected, String action) {
		String jsonStr = "{\"status\":\"ok\"}";
		if (rowAffected < 1) {
			jsonStr = String.format("{\"errorMsg\":\"%s\"}", action);
		}

		return jsonStr;
	}

	private String insertOrUpdate(String[] remarkAry, String jsonStr) {

		for (int i = 0; i < remarkAry.length; i++) {
			String remark = remarkAry[i].trim();

			item.setRemark(remark);
			item.setPrivilege(groupService.getPrivilegeByRemark(remark));
			int rowAffected = groupService.insertGroupPrivilege(item);
			jsonStr = getJsonResponse(rowAffected, "更新数据失败");
		}
		return jsonStr;
	}

	@Override
	public GroupPrivilege getModel() {
		return item;
	}

	public List<OptionBean> getPrivilegesLst() {
		return privilegesLst;
	}

	public void setPrivilegesLst(List<OptionBean> privilegesLst) {
		this.privilegesLst = privilegesLst;
	}

	public List<String> getGroupPrivilegesLst() {
		return groupPrivilegesLst;
	}

	public void setGroupPrivilegesLst(List<String> groupPrivilegesLst) {
		this.groupPrivilegesLst = groupPrivilegesLst;
	}

}
