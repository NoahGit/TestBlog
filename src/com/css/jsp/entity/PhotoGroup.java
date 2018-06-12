package com.css.jsp.entity;

public class PhotoGroup {
	private int pgId;
	private int userId;
	private String pgName;
	public int getPgId() {
		return pgId;
	}
	public int getUserId() {
		return userId;
	}
	public String getPgName() {
		return pgName;
	}
	public void setPgId(int pgId) {
		this.pgId = pgId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public void setPgName(String pgName) {
		this.pgName = pgName;
	}
	public PhotoGroup(int pgId, int userId, String pgName) {
		super();
		this.pgId = pgId;
		this.userId = userId;
		this.pgName = pgName;
	}
	public PhotoGroup(int userId, String pgName) {
		super();
		this.userId = userId;
		this.pgName = pgName;
	}
	public PhotoGroup() {
		super();
	}
	public PhotoGroup(String pgName, int pgId) {
		super();
		this.pgName = pgName;
		this.pgId = pgId;
	}
	
}
