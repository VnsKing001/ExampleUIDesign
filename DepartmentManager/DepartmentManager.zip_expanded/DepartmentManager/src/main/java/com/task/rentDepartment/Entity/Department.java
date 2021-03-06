package com.task.rentDepartment.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Department {

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	private String name;
	
	private String address;
	
	private String addressSearch;
	
	private int area;
	
	private int canContain;
	
	private int limitTimeRental;
	
	private int rentalPeriod;
	
	private String descrisption;
	
	private String image;
	
	private String attachments;

	public Department() {
		// TODO Auto-generated constructor stub
	}
	
	public Department(String name, String address, String addressSearch, int area, int canContain, int limitTimeRental,
			int rentalPeriod, String descrisption, String image, String attachments) {
		super();
		this.name = name;
		this.address = address;
		this.addressSearch = addressSearch;
		this.area = area;
		this.canContain = canContain;
		this.limitTimeRental = limitTimeRental;
		this.rentalPeriod = rentalPeriod;
		this.descrisption = descrisption;
		this.image = image;
		this.attachments = attachments;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAddressSearch() {
		return addressSearch;
	}

	public void setAddressSearch(String addressSearch) {
		this.addressSearch = addressSearch;
	}

	public int getArea() {
		return area;
	}

	public void setArea(int area) {
		this.area = area;
	}

	public int getCanContain() {
		return canContain;
	}

	public void setCanContain(int canContain) {
		this.canContain = canContain;
	}

	public int getLimitTimeRental() {
		return limitTimeRental;
	}

	public void setLimitTimeRental(int limitTimeRental) {
		this.limitTimeRental = limitTimeRental;
	}

	public int getRentalPeriod() {
		return rentalPeriod;
	}

	public void setRentalPeriod(int rentalPeriod) {
		this.rentalPeriod = rentalPeriod;
	}

	public String getDescrisption() {
		return descrisption;
	}

	public void setDescrisption(String descrisption) {
		this.descrisption = descrisption;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getAttachments() {
		return attachments;
	}

	public void setAttachments(String attachments) {
		this.attachments = attachments;
	}
	
	
}
