package com.project.db.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.project.db.model.Replies;

public class RepliesMapper implements RowMapper<Replies> {

	@Override
	public Replies mapRow(ResultSet rs, int rowNum) throws SQLException {
		Replies replies = new Replies();
		replies.setId(rs.getInt("id"));
		replies.setComment(rs.getString("comment"));
		replies.setRepliedBy(rs.getInt("reply_by"));
		replies.setTopicId(rs.getInt("topic_id"));
		return replies;
	}
}