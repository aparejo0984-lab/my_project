package com.project.db.jdbc;

import java.util.List;
import javax.sql.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;

import com.project.db.mapper.OrdersMapper;
import com.project.db.model.Orders;

public class OrdersJDBC {

	@SuppressWarnings("unused")
	private DataSource dataSource;
	private JdbcTemplate jdbcObject;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcObject = new JdbcTemplate(dataSource);
	}

	public boolean addOrder(Orders orders) {
		try {
			jdbcObject.update(
					DBStatement.ADD_ORDER, 
					orders.getUserId(), 
					orders.getProductCode(),
					orders.getPaymentMode(),
					orders.getQuantity(),
					orders.getTotal(),
					orders.getDeliveryOption(),
					orders.getInvoice()
			);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	
	public List<Orders> getAllOrders() {
		try {
			return jdbcObject.query(DBStatement.GET_ALL_ORDERS, new OrdersMapper());
		} catch (Exception e) {
			return null;
		}
	}
	
	public Orders getOrder(int id) {
		try {
			return jdbcObject.queryForObject(DBStatement.GET_ORDER, new Object[] { id }, new OrdersMapper());
		} catch (Exception e) {
			return null;
		}
	}
	
	public List<Orders> getMyOrders(String username){
		try {
			return jdbcObject.query(DBStatement.GET_MY_ORDER, new Object[] { username }, new OrdersMapper());
		} catch (Exception e) {
			return null;
		}
		
	}
	
	public Orders getMyOrderDetail(int id, String username) {
		try {
			return jdbcObject.queryForObject(DBStatement.GET_MY_ORDER_DETAIL, new Object[] { id,  username }, new OrdersMapper());
		} catch (Exception e) {
			return null;
		}
	}
	
}
