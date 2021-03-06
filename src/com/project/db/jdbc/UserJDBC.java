package com.project.db.jdbc;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import com.project.db.mapper.UserMapper;
import com.project.db.model.User;

public class UserJDBC {

	@SuppressWarnings("unused")
	private DataSource dataSource;
	private JdbcTemplate jdbcObject;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcObject = new JdbcTemplate(dataSource);
	}

	public List<User> getAllUser() {
		try {
			return jdbcObject.query(DBStatement.GET_ALL_USER, new UserMapper());
		} catch (Exception e) {
			return null;
		}
	}
	
	public User getUser(String username) {
		try {
			return jdbcObject.queryForObject(DBStatement.GET_USER, new Object[] { username }, new UserMapper());
		} catch (Exception e) {
			return null;
		}
	}
	
	public boolean updatePassword(User user) {
		try {
			jdbcObject.update(
					DBStatement.UPDATE_PASSWORD, 
					user.getPassword(), 
					user.getUsername());
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	
	public boolean saveUser(User user, String method) {
		try {
			jdbcObject.update(
					DBStatement.CRUD_USERS,
					method,
					user.getId(),
					user.getAccessLevel(),
					user.getEnabled(),
					user.getUsername(), 
					user.getPassword(),
					user.getName(),
					user.getAddress(),
					user.getContactNumber()
					);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	
	
}
