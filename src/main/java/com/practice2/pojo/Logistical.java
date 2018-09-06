package com.practice2.pojo;

import java.sql.Date;

public class Logistical {
	private Integer lpId;
	private String lpName;
	private String lpIdcard;
	private String lpTel;
	private String lpSex;
	private String lpJob;
	private Date lpAddtime;
	private Double lpSalary;
	private String lpNativeplace;
	public Integer getLpId() {
		return lpId;
	}
	public void setLpId(Integer lpId) {
		this.lpId = lpId;
	}
	public String getLpName() {
		return lpName;
	}
	public void setLpName(String lpName) {
		this.lpName = lpName;
	}
	public String getLpIdcard() {
		return lpIdcard;
	}
	public void setLpIdcard(String lpIdcard) {
		this.lpIdcard = lpIdcard;
	}
	public String getLpTel() {
		return lpTel;
	}
	public void setLpTel(String lpTel) {
		this.lpTel = lpTel;
	}
	public String getLpSex() {
		return lpSex;
	}
	public void setLpSex(String lpSex) {
		this.lpSex = lpSex;
	}
	public Date getLpAddtime() {
		return lpAddtime;
	}
	public void setLpAddtime(Date lpAddtime) {
		this.lpAddtime = lpAddtime;
	}
	public Double getLpSalary() {
		return lpSalary;
	}
	public void setLpSalary(Double lpSalary) {
		this.lpSalary = lpSalary;
	}
	public String getLpNativeplace() {
		return lpNativeplace;
	}
	public void setLpNativeplace(String lpNativeplace) {
		this.lpNativeplace = lpNativeplace;
	}
	public String getLpJob() {
		return lpJob;
	}
	public void setLpJob(String lpJob) {
		this.lpJob = lpJob;
	}
	@Override
	public String toString() {
		return "Logistical [lpId=" + lpId + ", lpName=" + lpName + ", lpIdcard=" + lpIdcard + ", lpTel=" + lpTel
				+ ", lpSex=" + lpSex + ", lpJob=" + lpJob + ", lpAddtime=" + lpAddtime + ", lpSalary=" + lpSalary
				+ ", lpNativeplace=" + lpNativeplace + "]";
	}
	
	
}
