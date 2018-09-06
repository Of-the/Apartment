package com.practice2.pojo;

import java.sql.Date;

public class Role {
	private int roleId;
	private String rName;
	private String rDesc;
	private Date rAddtime;
	
	

	public int getRoleId() {
		return roleId;
	}

	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}

	public String getrName() {
		return rName;
	}

	public void setrName(String rName) {
		this.rName = rName;
	}

	public String getrDesc() {
		return rDesc;
	}

	public void setrDesc(String rDesc) {
		this.rDesc = rDesc;
	}

	public Date getrAddtime() {
		return rAddtime;
	}

	public void setrAddtime(Date rAddtime) {
		this.rAddtime = rAddtime;
	}

	@Override
	public String toString() {
		return "Role [roleId=" + roleId + ", rName=" + rName + ", rDesc=" + rDesc + ", rAddtime=" + rAddtime + "]";
	}

	
}
