package com.project.db.model;

public class Topics {
	private int id;
	private String subject;
	private String content;
	private int createdBy;
	
	public Topics() {
	}

	public Topics(int id, String subject, String content, int createdBy) {
		super();
		this.id = id;
		this.subject = subject;
		this.content = content;
		this.createdBy = createdBy;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(int createdBy) {
		this.createdBy = createdBy;
	}

}
