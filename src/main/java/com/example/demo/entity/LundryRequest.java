package com.example.demo.entity;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


@Entity
public class LundryRequest {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer lunRequestId;
	
	private Integer topWear;
	
	private Integer bottomWear;
	
	private Integer wollenColth;
	
	private String serviceType;
	
	private String contact;
	
	private String description;
	
	private Date date;
	
	private String status;
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	@ManyToOne
	@JoinColumn(name="registerId")
	private Register register;
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Integer getLunRequestId() {
		return lunRequestId;
	}
	public void setLunRequestId(Integer lunRequestId) {
		this.lunRequestId = lunRequestId;
	}
	public Integer getTopWear() {
		return topWear;
	}
	public void setTopWear(Integer topWear) {
		this.topWear = topWear;
	}
	public Integer getBottomWear() {
		return bottomWear;
	}
	public void setBottomWear(Integer bottomWear) {
		this.bottomWear = bottomWear;
	}
	public Integer getWollenColth() {
		return wollenColth;
	}
	public void setWollenColth(Integer wollenColth) {
		this.wollenColth = wollenColth;
	}
	public String getServiceType() {
		return serviceType;
	}
	public void setServiceType(String serviceType) {
		this.serviceType = serviceType;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Register getRegister() {
		return register;
	}
	public void setRegister(Register register) {
		this.register = register;
	}
	@Override
	public String toString() {
		return "LundryRequest [lunRequestId=" + lunRequestId + ", topWear=" + topWear + ", bottomWear=" + bottomWear
				+ ", wollenColth=" + wollenColth + ", serviceType=" + serviceType + ", contact=" + contact
				+ ", description=" + description + ", date=" + date + ", status=" + status + ", register=" + register
				+ "]";
	}
	
	
	

}
