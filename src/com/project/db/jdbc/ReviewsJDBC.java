package com.project.db.jdbc;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import com.project.db.mapper.ReviewsMapper;
import com.project.db.model.Reviews;

public class ReviewsJDBC {

	@SuppressWarnings("unused")
	private DataSource dataSource;
	private JdbcTemplate jdbcObject;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcObject = new JdbcTemplate(dataSource);
	}

	public List<Reviews> getAllReviews() {
		try {
			return jdbcObject.query(DBStatement.GET_ALL_REVIEWS, new ReviewsMapper());
		} catch (Exception e) {
			System.out.print(e);
			return null;
		}
	}
	
	public boolean saveReview(Reviews reviews) {
		try {
			jdbcObject.update(
					DBStatement.CRUD_REVIEWS, 
					reviews.getUserId(),
					reviews.getRating(), 
					reviews.getName(), 
					reviews.getComment()
					);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	
}
