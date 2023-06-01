package com.laundry.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Table(name = "laundryRegistration")
@Entity
public class LaundryRegistrationEntity {
	
	@Id
	@Column(name = "reg_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer registrationId;
	
	@ManyToOne
	@JoinColumn(name = "user_id")
	private UserEntity userId;
	
	@Column(name = "drop_date")
	private Date dropDate;
	
	private Integer topWare;
	
	private Integer buttonWare;
	
	private Integer woolenCloth;
	
	private String serviceType;
	
	private String contanctPerson;
	
	private String description;
	
	private Double totalPrice;
	
	private Date expectDeliveryDate;
	
	private Integer deliverStatus;
	
	private Integer deletedFlag;
	

	public Integer getRegistrationId() {
		return registrationId;
	}

	public void setRegistrationId(Integer registrationId) {
		this.registrationId = registrationId;
	}

	public UserEntity getUserId() {
		return userId;
	}

	public void setUserId(UserEntity userId) {
		this.userId = userId;
	}

	public Date getDropDate() {
		return dropDate;
	}

	public void setDropDate(Date dropDate) {
		this.dropDate = dropDate;
	}

	public Integer getTopWare() {
		return topWare;
	}

	public void setTopWare(Integer topWare) {
		this.topWare = topWare;
	}

	public Integer getButtonWare() {
		return buttonWare;
	}

	public void setButtonWare(Integer buttonWare) {
		this.buttonWare = buttonWare;
	}

	public Integer getWoolenCloth() {
		return woolenCloth;
	}

	public void setWoolenCloth(Integer woolenCloth) {
		this.woolenCloth = woolenCloth;
	}

	

	public String getServiceType() {
		return serviceType;
	}

	public void setServiceType(String serviceType) {
		this.serviceType = serviceType;
	}

	public String getContanctPerson() {
		return contanctPerson;
	}

	public void setContanctPerson(String contanctPerson) {
		this.contanctPerson = contanctPerson;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getDeletedFlag() {
		return deletedFlag;
	}

	public void setDeletedFlag(Integer deletedFlag) {
		this.deletedFlag = deletedFlag;
	}
	
	

	public Double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(Double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public Date getExpectDeliveryDate() {
		return expectDeliveryDate;
	}

	public void setExpectDeliveryDate(Date expectDeliveryDate) {
		this.expectDeliveryDate = expectDeliveryDate;
	}

	public Integer getDeliverStatus() {
		return deliverStatus;
	}

	public void setDeliverStatus(Integer deliverStatus) {
		this.deliverStatus = deliverStatus;
	}

	
	
	
	
	
	
	

}
