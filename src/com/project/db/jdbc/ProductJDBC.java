package com.project.db.jdbc;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import com.project.db.mapper.ProductMapper;
import com.project.db.model.Product;

public class ProductJDBC {

	@SuppressWarnings("unused")
	private DataSource dataSource;
	private JdbcTemplate jdbcObject;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcObject = new JdbcTemplate(dataSource);
	}

	public List<Product> getAllProduct() {
		try {
			return jdbcObject.query(DBStatement.GET_ALL_PRODUCT, new ProductMapper());
		} catch (Exception e) {
			return null;
		}
	}
	
	public Product getProduct(int code) {
		try {
			return jdbcObject.queryForObject(DBStatement.GET_PRODUCT, new Object[] { code }, new ProductMapper());
		} catch (Exception e) {
			return null;
		}
	}
	
	public boolean updateProduct(Product product, String method) {
		try {
			jdbcObject.update(
					DBStatement.CRUD_PRODUCT, 
					method,
					product.getCode(),
					product.getName(), 
					product.getDescription(), 
					product.getPrice(), 
					product.getStatus());
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	
	public boolean addProduct(Product product, String method) {
		try {
			jdbcObject.update(
					DBStatement.CRUD_PRODUCT, 
					method,
					product.getCode(),
					product.getName(), 
					product.getDescription(), 
					product.getPrice(), 
					product.getStatus()
					);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	
}
