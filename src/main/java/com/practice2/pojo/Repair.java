package com.practice2.pojo;

import java.sql.Date;

public class Repair {
	private int raId;
	private int hId;
	private int lpId;
 	private String raInfo;
	private Date raTime;
	private String raEnd;
	private String raDesc;
	public int getRaId() {
		return raId;
	}
	public void setRaId(int raId) {
		this.raId = raId;
	}
	public int gethId() {
		return hId;
	}
	public void sethId(int hId) {
		this.hId = hId;
	}
	public int getLpId() {
		return lpId;
	}
	public void setLpId(int lpId) {
		this.lpId = lpId;
	}
	public String getRaInfo() {
		return raInfo;
	}
	public void setRaInfo(String raInfo) {
		this.raInfo = raInfo;
	}
	public Date getRaTime() {
		return raTime;
	}
	public void setRaTime(Date raTime) {
		this.raTime = raTime;
	}
	public String getRaEnd() {
		return raEnd;
	}
	public void setRaEnd(String raEnd) {
		this.raEnd = raEnd;
	}
	public String getRaDesc() {
		return raDesc;
	}
	public void setRaDesc(String raDesc) {
		this.raDesc = raDesc;
	}
	@Override
	public String toString() {
		return "Repair [raId=" + raId + ", hId=" + hId + ", lpId=" + lpId + ", raInfo=" + raInfo + ", raTime=" + raTime
				+ ", raEnd=" + raEnd + ", raDesc=" + raDesc + "]";
	}
	
}
