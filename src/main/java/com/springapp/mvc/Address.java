package com.springapp.mvc;

import javax.persistence.*;

@Entity
@NamedQueries({
		@NamedQuery(name = "Address.findAll", query = "select a from Address a") })
public class Address {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long _id;

	@Basic
	private String name;
	@Basic
	private String address;
	@Basic
	private String phone;
	@Basic
	private String email;
	@Basic
	private String imageURL;

	public Address(String name, String address, String phoneNumber, String email) {
		this.name = name;
		this.address = address;
		this.phone = phoneNumber;
		this.email = email;
	}

	// ADDED Default Constructor Because of Build Errors in pom.xml
	public Address() {
	}

	public Long get_id() {
		return _id;
	}

	public void set_id(Long _id) {
		this._id = _id;
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phoneNumber) {
		this.phone = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getImageURL() {
		return imageURL;
	}

	public void setImageURL(String imageURL) {
		this.imageURL = imageURL;
	}
}
