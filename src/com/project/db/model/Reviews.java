package com.project.db.model;

public class Reviews {
	private int id;
	private int userId;
	private int rating;
	private String name;
	private String comment;

	public Reviews() {
	}

	public Reviews(int id, int userId, int rating, String name, String comment) {
		super();
		this.id = id;
		this.userId = userId;
		this.rating = rating;
		this.name = name;
		this.comment = comment;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}
}
