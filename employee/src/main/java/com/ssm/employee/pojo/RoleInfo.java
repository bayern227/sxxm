package com.ssm.employee.pojo;

public class RoleInfo {
	private String eid;
	private String roleCode;
	private String name;
	private String insUserId;
	private String insTimestamp;
	private String updUserId;
	private String updTimestamp;
	
	public RoleInfo() {}
	public String getEid() {
		return eid;
	}
	public void setEid(String eid) {
		this.eid = eid;
	}
	public String getRoleCode() {
		return roleCode;
	}
	public void setRoleCode(String roleCode) {
		this.roleCode = roleCode;
	}
	public String getInsUserId() {
		return insUserId;
	}
	public void setInsUserId(String insUserId) {
		this.insUserId = insUserId;
	}
	public String getInsTimestamp() {
		return insTimestamp;
	}
	public void setInsTimestamp(String insTimestamp) {
		this.insTimestamp = insTimestamp;
	}
	public String getUpdUserId() {
		return updUserId;
	}
	public void setUpdUserId(String updUserId) {
		this.updUserId = updUserId;
	}
	public String getUpdTimestamp() {
		return updTimestamp;
	}
	public void setUpdTimestamp(String updTimestamp) {
		this.updTimestamp = updTimestamp;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "RoleInfo [eid=" + eid + ", roleCode=" + roleCode + ", name=" + name + ", insUserId=" + insUserId
				+ ", insTimestamp=" + insTimestamp + ", updUserId=" + updUserId + ", updTimestamp=" + updTimestamp
				+ "]";
	}
	
	
	
}
