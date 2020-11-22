package com.project.db.jdbc;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import com.project.db.mapper.PersonMapper;
import com.project.db.model.Person;

public class PersonJDBC {

	@SuppressWarnings("unused")
	private DataSource dataSource;
	private JdbcTemplate jdbcObject;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcObject = new JdbcTemplate(dataSource);
	}

	public boolean saveUser(Person person) {
		try {
			jdbcObject.update(DBStatement.SAVE_PERSON, person.getName(), person.getAddress());
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	public List<Person> getAllPerson() {
		try {
			return jdbcObject.query(DBStatement.GET_ALL_PERSON, new PersonMapper());
		} catch (Exception e) {
			return null;
		}
	}

	public Person getPerson(int id) {
		try {
			return jdbcObject.queryForObject(DBStatement.GET_PERSON, new Object[] { id }, new PersonMapper());
		} catch (Exception e) {
			return null;
		}
	}

	public boolean updateUser(Person person) {
		try {
			jdbcObject.update(DBStatement.UPDATE_PERSON, person.getName(), person.getAddress(), person.getId());
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	public boolean deleteUser(int id) {
		try {
			jdbcObject.update(DBStatement.DELETE_PERSON, id);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
}
