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
	
	
}



