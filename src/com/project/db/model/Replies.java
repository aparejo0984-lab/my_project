package com.project.db.model;

public class Replies {
	private int id;
	private String comment;
	private int topicId;
	private int repliedBy;
	
	public Replies() {
	}

	public Replies(int id, String comment, int topicId, int repliedBy) {
		super();
		this.id = id;
		this.comment = comment;
		this.topicId = topicId;
		this.repliedBy = repliedBy;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public int getTopicId() {
		return topicId;
	}

	public void setTopicId(int topicId) {
		this.topicId = topicId;
	}

	public int getRepliedBy() {
		return repliedBy;
	}

	public void setRepliedBy(int repliedBy) {
		this.repliedBy = repliedBy;
	}
}
