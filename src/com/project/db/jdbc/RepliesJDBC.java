package com.project.db.jdbc;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import com.project.db.mapper.RepliesMapper;
import com.project.db.model.Replies;

public class RepliesJDBC {

	@SuppressWarnings("unused")
	private DataSource dataSource;
	private JdbcTemplate jdbcObject;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcObject = new JdbcTemplate(dataSource);
	}
	
	public boolean saveReply(Replies replies) {
		try {
			jdbcObject.update(
					DBStatement.ADD_COMMENT, 
					replies.getComment(), 
					replies.getTopicId(),
					replies.getRepliedBy()
					);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	
}
