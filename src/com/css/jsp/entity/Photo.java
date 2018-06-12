package com.css.jsp.entity;

public class Photo {
	private int pid;
	private int pgId;
	private String photoTitle;
	private String photoContent;
	private String photoPublishTime;
	private String photoPath;
	private String photoType;
	public int getPid() {
		return pid;
	}
	public int getPgId() {
		return pgId;
	}
	public String getPhotoTitle() {
		return photoTitle;
	}
	public String getPhotoContent() {
		return photoContent;
	}
	public String getPhotoPublishTime() {
		return photoPublishTime;
	}
	public String getPhotoPath() {
		return photoPath;
	}
	public String getPhotoType() {
		return photoType;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public void setPgId(int pgId) {
		this.pgId = pgId;
	}
	public void setPhotoTitle(String photoTitle) {
		this.photoTitle = photoTitle;
	}
	public void setPhotoContent(String photoContent) {
		this.photoContent = photoContent;
	}
	public void setPhotoPublishTime(String photoPublishTime) {
		this.photoPublishTime = photoPublishTime;
	}
	public void setPhotoPath(String photoPath) {
		this.photoPath = photoPath;
	}
	public void setPhotoType(String photoType) {
		this.photoType = photoType;
	}
	public Photo(int pid, int pgId, String photoTitle, String photoContent,
			String photoPublishTime, String photoPath, String photoType) {
		super();
		this.pid = pid;
		this.pgId = pgId;
		this.photoTitle = photoTitle;
		this.photoContent = photoContent;
		this.photoPublishTime = photoPublishTime;
		this.photoPath = photoPath;
		this.photoType = photoType;
	}
	public Photo(int pgId, String photoTitle, String photoContent,
			String photoPublishTime, String photoPath, String photoType) {
		super();
		this.pgId = pgId;
		this.photoTitle = photoTitle;
		this.photoContent = photoContent;
		this.photoPublishTime = photoPublishTime;
		this.photoPath = photoPath;
		this.photoType = photoType;
	}
	public Photo() {
		super();
	}
	public Photo(String photoTitle, String photoContent,
			String photoPublishTime, String photoPath, String photoType) {
		super();
		this.photoTitle = photoTitle;
		this.photoContent = photoContent;
		this.photoPublishTime = photoPublishTime;
		this.photoPath = photoPath;
		this.photoType = photoType;
	}
	public Photo(int pid, String photoTitle, String photoContent) {
		super();
		this.pid = pid;
		this.photoTitle = photoTitle;
		this.photoContent = photoContent;
	}
	
	
}
