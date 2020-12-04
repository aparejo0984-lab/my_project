package com.project.db.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.project.db.model.Reviews;

public class ReviewsMapper implements RowMapper<Reviews> {

	@Override
	public Reviews mapRow(ResultSet rs, int rowNum) throws SQLException {
		Reviews reviews = new Reviews();
		reviews.setId(rs.getInt("id"));
		reviews.setUserId(rs.getInt("user_id"));
		reviews.setRating(rs.getInt("rating"));
		reviews.setName(rs.getString("name"));
		reviews.setComment(rs.getString("comment"));
		return reviews;
	}
}