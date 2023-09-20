package com.enotes.user;

import java.util.Date;

public class Post {
	private int id;
	private String tittle;
	private String content;
	private Date pdate;
	private UserDetails user;

	public Post(int id, String tittle, String content, Date pdate, UserDetails user) {
		super();
		this.id = id;
		this.tittle = tittle;
		this.content = content;
		this.pdate = pdate;
		this.user = user;
	}

	public Post() {
		super();

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTittle() {
		return tittle;
	}

	public void setTittle(String tittle) {
		this.tittle = tittle;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getPdate() {
		return pdate;
	}

	public void setPdate(Date pdate) {
		this.pdate = pdate;
	}

	public UserDetails getUser() {
		return user;
	}

	public void setUser(UserDetails user) {
		this.user = user;
	}

}
