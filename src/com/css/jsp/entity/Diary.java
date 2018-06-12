package com.css.jsp.entity;

public class Diary {
	private int diaryId;
	private int dgId;
	private String diaryTitle;
	private String diaryContent;
	private String diaryPublishTime;
	public int getDiaryId() {
		return diaryId;
	}
	public int getDgId() {
		return dgId;
	}
	public String getDiaryTitle() {
		return diaryTitle;
	}
	public String getDiaryContent() {
		return diaryContent;
	}
	public String getDiaryPublishTime() {
		return diaryPublishTime;
	}
	public void setDiaryId(int diaryId) {
		this.diaryId = diaryId;
	}
	public void setDgId(int dgId) {
		this.dgId = dgId;
	}
	public void setDiaryTitle(String diaryTitle) {
		this.diaryTitle = diaryTitle;
	}
	public void setDiaryContent(String diaryContent) {
		this.diaryContent = diaryContent;
	}
	public void setDiaryPublishTime(String diaryPublishTime) {
		this.diaryPublishTime = diaryPublishTime;
	}
	
	public Diary(int dgId, String diaryTitle, String diaryContent,
			String diaryPublishTime) {
		super();
		this.dgId = dgId;
		this.diaryTitle = diaryTitle;
		this.diaryContent = diaryContent;
		this.diaryPublishTime = diaryPublishTime;
	}
	public Diary(int diaryId, int dgId, String diaryTitle, String diaryContent,
			String diaryPublishTime) {
		super();
		this.diaryId = diaryId;
		this.dgId = dgId;
		this.diaryTitle = diaryTitle;
		this.diaryContent = diaryContent;
		this.diaryPublishTime = diaryPublishTime;
	}
	public Diary(String diaryTitle, String diaryContent, String diaryPublishTime) {
		super();
		this.diaryTitle = diaryTitle;
		this.diaryContent = diaryContent;
		this.diaryPublishTime = diaryPublishTime;
	}
	public Diary(String diaryTitle, String diaryPublishTime) {
		super();
		this.diaryTitle = diaryTitle;
		this.diaryPublishTime = diaryPublishTime;
	}
	public Diary(int diaryId, String diaryTitle, String diaryContent) {
		super();
		this.diaryId = diaryId;
		this.diaryTitle = diaryTitle;
		this.diaryContent = diaryContent;
	}
	
}
