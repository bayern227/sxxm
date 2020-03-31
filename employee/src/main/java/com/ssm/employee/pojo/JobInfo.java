package com.ssm.employee.pojo;

public class JobInfo {
	private String eid;
	//private String jobTitleCode;
	private Master title;
	private String jobLevelCode;
	//private String deliveryCapabilityCode;
	private Master capability;
	//private String jobPositionCode;
	private Master position;
	//private String confirmStatus;
	private Master confirm;
	private String rejectReason;
	private String insUserid;
	private String insTimestamp;
	private String updUserid;
	private String updTimestamp;
	
	public JobInfo() {}

	public String getEid() {
		return eid;
	}

	public void setEid(String eid) {
		this.eid = eid;
	}

	public Master getTitle() {
		return title;
	}

	public void setTitle(Master title) {
		this.title = title;
	}

	public String getJobLevelCode() {
		return jobLevelCode;
	}

	public void setJobLevelCode(String jobLevelCode) {
		this.jobLevelCode = jobLevelCode;
	}

	public Master getCapability() {
		return capability;
	}

	public void setCapability(Master capability) {
		this.capability = capability;
	}

	

	public Master getPosition() {
		return position;
	}

	public void setPosition(Master position) {
		this.position = position;
	}

	public Master getConfirm() {
		return confirm;
	}

	public void setConfirm(Master confirm) {
		this.confirm = confirm;
	}

	public String getRejectReason() {
		return rejectReason;
	}

	public void setRejectReason(String rejectReason) {
		this.rejectReason = rejectReason;
	}

	public String getInsUserid() {
		return insUserid;
	}

	public void setInsUserid(String insUserid) {
		this.insUserid = insUserid;
	}

	public String getInsTimestamp() {
		return insTimestamp;
	}

	public void setInsTimestamp(String insTimestamp) {
		this.insTimestamp = insTimestamp;
	}

	public String getUpdUserid() {
		return updUserid;
	}

	public void setUpdUserid(String updUserid) {
		this.updUserid = updUserid;
	}

	public String getUpdTimestamp() {
		return updTimestamp;
	}

	public void setUpdTimestamp(String updTimestamp) {
		this.updTimestamp = updTimestamp;
	}

	@Override
	public String toString() {
		return "JobInfo [eid=" + eid + ", title=" + title + ", jobLevelCode=" + jobLevelCode + ", capability="
				+ capability + ", position=" + position + ", confirm=" + confirm + ", rejectReason=" + rejectReason
				+ ", insUserid=" + insUserid + ", insTimestamp=" + insTimestamp + ", updUserid=" + updUserid
				+ ", updTimestamp=" + updTimestamp + "]";
	}

	

	
	
	
}
