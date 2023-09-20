package com.enotes.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.enotes.user.UserDetails;

public class UserDao {

	private Connection con;

	public UserDao(Connection con) {
		super();
		this.con = con;
	}

	public boolean addUser(UserDetails user) {
		boolean f = false;
		try {

			String query = "insert into user (id,name,department,gender,address,email,dob,password,picture) values(?,?,?,?,?,?,?,?,?)";
			PreparedStatement pstmt = this.con.prepareStatement(query);
			pstmt.setString(1, user.getId());
			pstmt.setString(2, user.getName());
			pstmt.setString(3, user.getDepartment());
			pstmt.setString(4, user.getGender());
			pstmt.setString(5, user.getAddress());
			pstmt.setString(6, user.getEmail());
			pstmt.setString(7, user.getDob());
			pstmt.setString(8, user.getPassword());
			pstmt.setString(9, user.getPicture());

			int i = pstmt.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public UserDetails loginUser(UserDetails user) {
		UserDetails us = null;
		try {
			String query = "select * from user where id=? and password=?";
			PreparedStatement pstmt = this.con.prepareStatement(query);
			pstmt.setString(1, user.getId());
			pstmt.setString(2, user.getPassword());

			ResultSet set = pstmt.executeQuery();
			if (set.next()) {
				us = new UserDetails();
				us.setId(set.getString("id"));
				us.setName(set.getString("name"));
				us.setEmail(set.getString("email"));
				us.setAddress(set.getString("address"));
				us.setDepartment(set.getString("department"));
				us.setDob(set.getString("dob"));
				us.setPassword("password");
				us.setPicture(set.getString("picture"));
				us.setRdate(set.getTimestamp("rdate"));
				us.setUid(set.getInt("uid"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return us;
	}

}
