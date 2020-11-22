package com.project.db.jdbc;

public class DBStatement {
	public static final String SAVE_PERSON = "INSERT INTO person(name, address) VALUES(?, ?)";
	public static final String UPDATE_PERSON = "UPDATE person SET name=?, address=? WHERE id=?";
	public static final String GET_ALL_PERSON = "SELECT * FROM person";
	public static final String GET_PERSON = "SELECT * FROM person WHERE id=?";
	public static final String DELETE_PERSON = "DELETE FROM person WHERE id=?";
}
