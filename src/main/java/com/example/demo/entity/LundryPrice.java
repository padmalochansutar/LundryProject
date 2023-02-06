package com.example.demo.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class LundryPrice {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer lundryId;
	
	private String lundryname;
	
	private String lundryPrice;

	public Integer getLundryId() {
		return lundryId;
	}

	public void setLundryId(Integer lundryId) {
		this.lundryId = lundryId;
	}

	public String getLundryname() {
		return lundryname;
	}

	public void setLundryname(String lundryname) {
		this.lundryname = lundryname;
	}

	public String getLundryPrice() {
		return lundryPrice;
	}

	public void setLundryPrice(String lundryPrice) {
		this.lundryPrice = lundryPrice;
	}

	@Override
	public String toString() {
		return "LundryPrice [lundryId=" + lundryId + ", lundryname=" + lundryname + ", lundryPrice=" + lundryPrice
				+ "]";
	}
	
	

}
