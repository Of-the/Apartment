package com.practice2.pojo;

import java.sql.Date;

public class Contract {
	private Integer cId;
	private Integer cNumber;
	private Integer hId;
	private Integer lId;
	private Date cTime;
	private Date cStarttime;
	private Date cEndtime;
	private String cMoney;
	private String cPay;
	private Integer cDeposit;
	private Integer cPeriods;
	private String cPeople;
	private Integer cStatus;
	public Integer getcId() {
		return cId;
	}
	public void setcId(Integer cId) {
		this.cId = cId;
	}
	public Integer getcNumber() {
		return cNumber;
	}
	public void setcNumber(Integer cNumber) {
		this.cNumber = cNumber;
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
	public Date getcTime() {
		return cTime;
	}
	public void setcTime(Date cTime) {
		this.cTime = cTime;
	}
	public Date getcStarttime() {
		return cStarttime;
	}
	public void setcStarttime(Date cStarttime) {
		this.cStarttime = cStarttime;
	}
	public Date getcEndtime() {
		return cEndtime;
	}
	public void setcEndtime(Date cEndtime) {
		this.cEndtime = cEndtime;
	}
	public String getcMoney() {
		return cMoney;
	}
	public void setcMoney(String cMoney) {
		this.cMoney = cMoney;
	}
	public String getcPay() {
		return cPay;
	}
	public void setcPay(String cPay) {
		this.cPay = cPay;
	}
	public Integer getcDeposit() {
		return cDeposit;
	}
	public void setcDeposit(Integer cDeposit) {
		this.cDeposit = cDeposit;
	}
	public Integer getcPeriods() {
		return cPeriods;
	}
	public void setcPeriods(Integer cPeriods) {
		this.cPeriods = cPeriods;
	}
	public String getcPeople() {
		return cPeople;
	}
	public void setcPeople(String cPeople) {
		this.cPeople = cPeople;
	}
	public Integer getcStatus() {
		return cStatus;
	}
	public void setcStatus(Integer cStatus) {
		this.cStatus = cStatus;
	}
	@Override
	public String toString() {
		return "Contract [cId=" + cId + ", cNumber=" + cNumber + ", hId=" + hId + ", lId=" + lId + ", cTime=" + cTime
				+ ", cStarttime=" + cStarttime + ", cEndtime=" + cEndtime + ", cMoney=" + cMoney + ", cPay=" + cPay
				+ ", cDeposit=" + cDeposit + ", cPeriods=" + cPeriods + ", cPeople=" + cPeople + ", cStatus=" + cStatus
				+ "]";
	}
	
}
