package com.css.jsp.entity;

public class DiaryGroup {
	private int dgId;
	private int userId;
	private String dgName;
	public int getDgId() {
		return dgId;
	}
	public int getUserId() {
		return userId;
	}
	public String getDgName() {
		return dgName;
	}
	public void setDgId(int dgId) {
		this.dgId = dgId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public void setDgName(String dgName) {
		this.dgName = dgName;
	}
	public DiaryGroup() {
		super();
	}
	public DiaryGroup(int userId, String dgName) {
		super();
		this.userId = userId;
		this.dgName = dgName;
	}
	public DiaryGroup(int dgId, int userId, String dgName) {
		super();
		this.dgId = dgId;
		this.userId = userId;
		this.dgName = dgName;
	}
	public DiaryGroup(String dgName,int dgId) {
		super();
		this.dgId = dgId;
		this.dgName = dgName;
	}
	
}
