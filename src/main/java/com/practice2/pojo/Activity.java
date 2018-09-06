package com.practice2.pojo;

import java.sql.Date;

public class Activity {
	private Integer aId;
 	private Date aTime;
	private String aTitle;
	private String aInfo;
	private String aPlace;
	private String aMoney;
	private String aOrgnized;
	public Integer getaId() {
		return aId;
	}
	public void setaId(Integer aId) {
		this.aId = aId;
	}
	public Date getaTime() {
		return aTime;
	}
	public void setaTime(Date aTime) {
		this.aTime = aTime;
	}
	public String getaTitle() {
		return aTitle;
	}
	public void setaTitle(String aTitle) {
		this.aTitle = aTitle;
	}
	public String getaInfo() {
		return aInfo;
	}
	public void setaInfo(String aInfo) {
		this.aInfo = aInfo;
	}
	public String getaPlace() {
		return aPlace;
	}
	public void setaPlace(String aPlace) {
		this.aPlace = aPlace;
	}
	public String getaMoney() {
		return aMoney;
	}
	public void setaMoney(String aMoney) {
		this.aMoney = aMoney;
	}
	public String getaOrgnized() {
		return aOrgnized;
	}
	public void setaOrgnized(String aOrgnized) {
		this.aOrgnized = aOrgnized;
	}
	@Override
	public String toString() {
		return "Activity [aId=" + aId + ", aTime=" + aTime + ", aTitle=" + aTitle + ", aInfo=" + aInfo + ", aPlace="
				+ aPlace + ", aMoney=" + aMoney + ", aOrgnized=" + aOrgnized + "]";
	}

}
