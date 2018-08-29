package com.practice2.pojo;

import java.sql.Date;
import java.sql.Timestamp;

public class Lessee {
	private Integer lId;
	private String lName;
	private String lTel;
	private Character lSex;
	private String lNativeplace;
	private String lIdcard;
	private Date lAddtime;
	public Integer getlId() {
		return lId;
	}
	public void setlId(Integer lId) {
		this.lId = lId;
	}
	public String getlName() {
		return lName;
	}
	public void setlName(String lName) {
		this.lName = lName;
	}
	public String getlTel() {
		return lTel;
	}
	public void setlTel(String lTel) {
		this.lTel = lTel;
	}

	public String getlIdcard() {
		return lIdcard;
	}
	public void setlIdcard(String lIdcard) {
		this.lIdcard = lIdcard;
	}
	public Character getlSex() {
		return lSex;
	}
	public void setlSex(Character lSex) {
		this.lSex = lSex;
	}
	public String getlNativeplace() {
		return lNativeplace;
	}
	public void setlNativeplace(String lNativeplace) {
		this.lNativeplace = lNativeplace;
	}
	public Date getlAddtime() {
		return lAddtime;
	}
	public void setlAddtime(Date lAddtime) {
		this.lAddtime = lAddtime;
	}
	public Lessee() {
		super();
	}
	public Lessee(Integer lId, String lName, String lTel, Character lSex, String lNativeplace, String lIdcard,
			Date lAddtime) {
		super();
		this.lId = lId;
		this.lName = lName;
		this.lTel = lTel;
		this.lSex = lSex;
		this.lNativeplace = lNativeplace;
		this.lIdcard = lIdcard;
		this.lAddtime = lAddtime;
	}

	@Override
	public String toString() {
		return "Lessee [lId=" + lId + ", lName=" + lName + ", lTel=" + lTel + ", lSex=" + lSex + ", lNativeplace="
				+ lNativeplace + ", lIdcard=" + lIdcard + ", lAddtime=" + lAddtime + "]";
	}

	
	
	
	
}
