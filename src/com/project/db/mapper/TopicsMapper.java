package com.project.db.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.project.db.model.Topics;

public class TopicsMapper implements RowMapper<Topics> {

	@Override
	public Topics mapRow(ResultSet rs, int rowNum) throws SQLException {
		Topics topics = new Topics();
		topics.setId(rs.getInt("id"));
		topics.setSubject(rs.getString("subject"));
		topics.setContent(rs.getString("content"));
		topics.setCreatedBy(rs.getInt("created_by"));
		return topics;
	}
}