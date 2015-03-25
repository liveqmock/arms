package com.chiefmech.arms.entity;

public class GroupPrivilege {
	  /**
	   * 唯一标识
	   */
	  private int id;
	  /**
	   * 用户组组名
	   */
	  private String groupName;
	  /**
	   * 用户组特有权限
	   */
	  private String privilege;
	  /**
	   * 备注信息
	   */
	  private String remark;
	  
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getGroupName() {
		return groupName;
	}
	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}
	public String getPrivilege() {
		return privilege;
	}
	public void setPrivilege(String privilege) {
		this.privilege = privilege;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	  
}
