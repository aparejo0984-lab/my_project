package com.project.db.jdbc;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import com.project.db.mapper.TopicsMapper;
import com.project.db.model.Topics;

public class TopicsJDBC {

	@SuppressWarnings("unused")
	private DataSource dataSource;
	private JdbcTemplate jdbcObject;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcObject = new JdbcTemplate(dataSource);
	}

	public boolean savePost(Topics topics) {
		try {
			jdbcObject.update(
					DBStatement.ADD_POST, 
					topics.getSubject(), 
					topics.getContent(),
					topics.getCreatedBy()
					);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	
	public Topics getTopic(int id) {
		try {
			return jdbcObject.queryForObject(DBStatement.GET_TOPIC, new Object[] { id }, new TopicsMapper());
		} catch (Exception e) {
			return null;
		}
	}
	
	

}
