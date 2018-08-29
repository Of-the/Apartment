package com.practice2.pojo;

import java.sql.Date;
import java.sql.Timestamp;

public class House {
	private Integer hId;
	private String hArea;
	private String hEstate;
	private String hUnitnumber;
	private Integer hFloor;
	private String hRoomno;
	private String hAcreage;
	private String hDirection;
	private String hFitment;
	private Boolean hIsdoubleair;
	private Integer hLimit;
	private String hFacility;
	private Double hPrice;
	private Integer hStatus;
	private String hImg;
	private String hAddress;
	private Date hAddtime;
	private Date hUpdatetime;
	public Integer gethId() {
		return hId;
	}
	public void sethId(Integer hId) {
		this.hId = hId;
	}
	public String gethArea() {
		return hArea;
	}
	public void sethArea(String hArea) {
		this.hArea = hArea;
	}
	public String gethEstate() {
		return hEstate;
	}
	public void sethEstate(String hEstate) {
		this.hEstate = hEstate;
	}
	public String gethUnitnumber() {
		return hUnitnumber;
	}
	public void sethUnitnumber(String hUnitnumber) {
		this.hUnitnumber = hUnitnumber;
	}
	public Integer gethFloor() {
		return hFloor;
	}
	public void sethFloor(Integer hFloor) {
		this.hFloor = hFloor;
	}
	public String gethRoomno() {
		return hRoomno;
	}
	public void sethRoomno(String hRoomno) {
		this.hRoomno = hRoomno;
	}
	public String gethAcreage() {
		return hAcreage;
	}
	public void sethAcreage(String hAcreage) {
		this.hAcreage = hAcreage;
	}
	public String gethDirection() {
		return hDirection;
	}
	public void sethDirection(String hDirection) {
		this.hDirection = hDirection;
	}
	public String gethFitment() {
		return hFitment;
	}
	public void sethFitment(String hFitment) {
		this.hFitment = hFitment;
	}
	public Boolean gethIsdoubleair() {
		return hIsdoubleair;
	}
	public void sethIsdoubleair(Boolean hIsdoubleair) {
		this.hIsdoubleair = hIsdoubleair;
	}
	public Integer gethLimit() {
		return hLimit;
	}
	public void sethLimit(Integer hLimit) {
		this.hLimit = hLimit;
	}
	public String gethFacility() {
		return hFacility;
	}
	public void sethFacility(String hFacility) {
		this.hFacility = hFacility;
	}
	public Double gethPrice() {
		return hPrice;
	}
	public void sethPrice(Double hPrice) {
		this.hPrice = hPrice;
	}
	public Integer gethStatus() {
		return hStatus;
	}
	public void sethStatus(Integer hStatus) {
		this.hStatus = hStatus;
	}
	public String gethImg() {
		return hImg;
	}
	public void sethImg(String hImg) {
		this.hImg = hImg;
	}
	public String gethAddress() {
		return hAddress;
	}
	public void sethAddress(String hAddress) {
		this.hAddress = hAddress;
	}

	public House(Integer hId, String hArea, String hEstate, String hUnitnumber, Integer hFloor, String hRoomno,
			String hAcreage, String hDirection, String hFitment, Boolean hIsdoubleair, Integer hLimit, String hFacility,
			Double hPrice, Integer hStatus, String hImg, String hAddress, Date hAddtime, Date hUpdatetime) {
		super();
		this.hId = hId;
		this.hArea = hArea;
		this.hEstate = hEstate;
		this.hUnitnumber = hUnitnumber;
		this.hFloor = hFloor;
		this.hRoomno = hRoomno;
		this.hAcreage = hAcreage;
		this.hDirection = hDirection;
		this.hFitment = hFitment;
		this.hIsdoubleair = hIsdoubleair;
		this.hLimit = hLimit;
		this.hFacility = hFacility;
		this.hPrice = hPrice;
		this.hStatus = hStatus;
		this.hImg = hImg;
		this.hAddress = hAddress;
		this.hAddtime = hAddtime;
		this.hUpdatetime = hUpdatetime;
	}
	public Date gethAddtime() {
		return hAddtime;
	}
	public void sethAddtime(Date hAddtime) {
		this.hAddtime = hAddtime;
	}
	public Date gethUpdatetime() {
		return hUpdatetime;
	}
	public void sethUpdatetime(Date hUpdatetime) {
		this.hUpdatetime = hUpdatetime;
	}
	public House() {
		super();
	}
	
}
