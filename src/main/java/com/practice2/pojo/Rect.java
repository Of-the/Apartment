package com.practice2.pojo;

import java.sql.Date;
import java.sql.Timestamp;

public class Rect {
	private Integer rId;
	private Integer hId;
	private Integer lId;
	private Double rMoney;
	private Date rTime;
	private String rRemark;
	public Integer getrId() {
		return rId;
	}
	public void setrId(Integer rId) {
		this.rId = rId;
	}
	public Integer gethId() {
		return hId;
	}
	public void sethId(Integer hId) {
		this.hId = hId;
	}
	public Integer getlId() {
		return lId;
	}
	public void setlId(Integer lId) {
		this.lId = lId;
	}
	public Double getrMoney() {
		return rMoney;
	}
	public void setrMoney(Double rMoney) {
		this.rMoney = rMoney;
	}

	public Date getrTime() {
		return rTime;
	}
	public void setrTime(Date rTime) {
		this.rTime = rTime;
	}
	public String getrRemark() {
		return rRemark;
	}
	public void setrRemark(String rRemark) {
		this.rRemark = rRemark;
	}
	@Override
	public String toString() {
		return "Rect [rId=" + rId + ", hId=" + hId + ", lId=" + lId + ", rMoney=" + rMoney + ", rTime=" + rTime
				+ ", rRemark=" + rRemark + "]";
	}
	
}
