 package com.talentsprint.beans;

public class RideBean {
	String source;
	String destination;
	String customerId;
	String driverId;
	Double amount;
	String status;
	String carType;
	String FriendMobileNumber,FriendName;

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getSource() {
		return source;
	}

	public String getCarType() {
		return carType;
	}

	public void setCarType(String carType) {
		this.carType = carType;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public String getCustomerId() {
		return customerId;
	}

	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

	public String getDriverId() {
		return driverId;
	}
	public String getFriendMobileNumber() {
		return FriendMobileNumber;
	}

	public void setFriendMobileNumber(String FriendMobileNumber) {
		this.FriendMobileNumber = FriendMobileNumber;
	}
	public String getFriendName() {
		return FriendName;
	}

	public void setFriendName(String FriendName) {
		this.FriendName = FriendName;
	}


	public void setDriverId(String driverId) {
		this.driverId = driverId;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double d) {
		this.amount = d;
	}

}