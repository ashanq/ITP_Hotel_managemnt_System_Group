package com.mycompany.inventry_management;

public class Inventry {
	private int sid;
	private String name;
	private String expdate;
	private String catagory;
	private String quntity;
	private String unitPrice;
	private String reciveDate;
	private String action;
	
	public Inventry(int sid, String name, String expdate, String catagory, String quntity, String unitPrice, String reciveDate,
			String action) {
		
		this.sid = sid;
		this.name = name;
		this.expdate = expdate;
		this.catagory = catagory;
		this.quntity = quntity;
		this.unitPrice = unitPrice;
		this.reciveDate = reciveDate;
		this.action = action;
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getExpdate() {
		return expdate;
	}

	public void setExpdate(String expdate) {
		this.expdate = expdate;
	}

	public String getCatagory() {
		return catagory;
	}

	public void setCatagory(String catagory) {
		this.catagory = catagory;
	}

	public String getQuntity() {
		return quntity;
	}

	public void setQuntity(String quntity) {
		this.quntity = quntity;
	}

	public String getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(String unitPrice) {
		this.unitPrice = unitPrice;
	}

	public String getReciveDate() {
		return reciveDate;
	}

	public void setReciveDate(String reciveDate) {
		this.reciveDate = reciveDate;
	}

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}
	
}
