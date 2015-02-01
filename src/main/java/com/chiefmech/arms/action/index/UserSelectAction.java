package com.chiefmech.arms.action.index;

import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.entity.JiGou;
import com.chiefmech.arms.service.JiGouService;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Controller()
@Scope("prototype")
public class UserSelectAction extends BaseActionSupport {

	@Resource()
	private JiGouService jiGouService;
	List<JiGou> jigouList;

	@Action(value = "userSelect", results = { @Result(name = "input", location = "userSelect.jsp") })
	public String userSelect() {
		jigouList = jiGouService.selectItem();		
		return INPUT;
	}

	public List<JiGou> getJigouList() {
		return jigouList;
	}

	public void setJigouList(List<JiGou> jigouList) {
		this.jigouList = jigouList;
	}
}
