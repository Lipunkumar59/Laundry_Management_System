package com.laundry.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "price")
@Entity
public class Price {

	@Column(name = "price_id")
	@Id
	private Integer priceId;
	
	@Column(name = "buttom_wire_price")
	private  Double buttomWarePrice;
	
	@Column(name = "top_wire_price")
	private Double topWarePrice;
	
	@Column(name = "winter_wire_price")
	private Double winterWirePrice;

	public Integer getPriceId() {
		return priceId;
	}

	public void setPriceId(Integer priceId) {
		this.priceId = priceId;
	}

	public Double getButtomWarePrice() {
		return buttomWarePrice;
	}

	public void setButtomWarePrice(Double buttomWarePrice) {
		this.buttomWarePrice = buttomWarePrice;
	}

	public Double getTopWarePrice() {
		return topWarePrice;
	}

	public void setTopWarePrice(Double topWarePrice) {
		this.topWarePrice = topWarePrice;
	}

	public Double getWinterWirePrice() {
		return winterWirePrice;
	}

	public void setWinterWirePrice(Double winterWirePrice) {
		this.winterWirePrice = winterWirePrice;
	}

	@Override
	public String toString() {
		return "Price [priceId=" + priceId + ", buttomWarePrice=" + buttomWarePrice + ", topWarePrice=" + topWarePrice
				+ ", winterWirePrice=" + winterWirePrice + "]";
	}
	
	
}
