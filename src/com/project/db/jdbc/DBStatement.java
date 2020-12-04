package com.project.db.jdbc;

public class DBStatement {
	public static final String SAVE_PERSON = "INSERT INTO person(name, address) VALUES(?, ?)";
	public static final String UPDATE_PERSON = "UPDATE person SET name=?, address=? WHERE id=?";
	public static final String GET_ALL_PERSON = "SELECT * FROM person";
	public static final String GET_PERSON = "SELECT * FROM person WHERE id=?";
	public static final String DELETE_PERSON = "DELETE FROM person WHERE id=?";
	
	public static final String GET_ALL_PRODUCT = "SELECT * FROM product where enabled = 1";
	public static final String GET_PRODUCT = "SELECT * FROM product WHERE code=?";
	public static final String UPDATE_PRODUCT = "UPDATE product SET name=?, description=?, price=?, status=? WHERE code=?";
	public static final String ADD_PRODUCT = "INSERT INTO product(code, name, description, price, status) VALUES(?, ?, ?, ?, ?)";
	public static final String DELETE_PRODUCT = "UPDATE product SET enabled=0 WHERE code=?";
	
	public static final String GET_ALL_REVIEWS = "SELECT * FROM reviews";
	public static final String ADD_REVIEW = "INSERT INTO reviews(rating, name, comment) VALUES(?, ?, ?)";
	
	public static final String GET_USER = "SELECT * FROM user WHERE username=?";
	public static final String GET_ALL_USER = "SELECT * FROM user";
	public static final String UPDATE_USER = "UPDATE user SET name=?, address=?, contact_number=? WHERE username=?";
	public static final String UPDATE_PASSWORD = "UPDATE user SET password=? WHERE username=?";
	public static final String ADD_USER = "INSERT INTO user(username, password) VALUES(?, ?)";
	
	public static final String ADD_POST = "INSERT INTO topics(subject, content,created_by) VALUES(?, ?,?)";
	public static final String GET_TOPIC = "SELECT * FROM topics WHERE id=?";
	
	public static final String ADD_COMMENT = "INSERT INTO replies(comment, topic_id, reply_by) VALUES(?, ?, ?)";	
}



