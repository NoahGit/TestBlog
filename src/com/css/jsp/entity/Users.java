package com.css.jsp.entity;

public class Users {
	private int userId;
	private String userName;
	private String userPwd;
	private String label;
	public int getUserId() {
		return userId;
	}
	public String getUserName() {
		return userName;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public String getlabel() {
		return label;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public void setlabel(String label) {
		this.label = label;
	}
	public Users() {
		super();
	}
	public Users(int userId, String userName, String userPwd, String label) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPwd = userPwd;
		this.label = label;
	}
	public Users(String userName, String userPwd, String label) {
		super();
		this.userName = userName;
		this.userPwd = userPwd;
		this.label = label;
	}
	public Users(String userName, String userPwd) {
		super();
		this.userName = userName;
		this.userPwd = userPwd;
	}
	public Users(int userId, String userName, String userPwd) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPwd = userPwd;
	}
			
}

