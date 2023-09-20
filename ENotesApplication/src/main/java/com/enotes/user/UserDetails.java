package com.enotes.user;

import java.sql.*;

public class UserDetails {
	private String id;
	private String name;
	private String department;
	private String gender;
	private String address;
	private String email;
	private String dob;
	private String password;
	private String picture;
	private Timestamp rdate;
	private int uid;

	public Timestamp getRdate() {
		return rdate;
	}

	public void setRdate(Timestamp rdate) {
		this.rdate = rdate;
	}

	public UserDetails(String id, String name, String department, String gender, String address, String email,
			String dob, String password, String picture) {
		super();
		this.id = id;
		this.name = name;
		this.department = department;
		this.gender = gender;
		this.address = address;
		this.email = email;
		this.dob = dob;
		this.password = password;
		this.picture = picture;
	}

	public UserDetails() {
		super();

	}

	public UserDetails(String id, String password) {
		super();
		this.id = id;
		this.password = password;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

}
