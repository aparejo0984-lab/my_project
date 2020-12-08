package com.project.db.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.project.db.model.Orders;

public class OrdersMapper implements RowMapper<Orders> {

	@Override
	public Orders mapRow(ResultSet rs, int rowNum) throws SQLException {
		Orders orders = new Orders();
		orders.setId(rs.getInt("id"));
		orders.setUserId(rs.getInt("user_id"));
		orders.setProductCode(rs.getInt("product_code"));
		orders.setPaymentMode(rs.getInt("payment_mode"));
		orders.setStatusId(rs.getInt("status_id"));
		orders.setPaymentReceiptId(rs.getInt("payment_receipt_id"));
		orders.setInvoice(rs.getString("invoice"));
		orders.setQuantity(rs.getInt("quantity"));
		orders.setTotal(rs.getFloat("total"));
		orders.setDeliveryOption(rs.getInt("delivery_option"));
		orders.getProductDetails().setCode(rs.getInt("code"));
		orders.getProductDetails().setName(rs.getString("product_name"));
		orders.getProductDetails().setPrice(rs.getFloat("price"));
		orders.getUserDetails().setUsername(rs.getString("username"));
		orders.getUserDetails().setName(rs.getString("name"));
		orders.getUserDetails().setAddress(rs.getString("address"));
		orders.getUserDetails().setContactNumber(rs.getString("contact_number"));
		return orders;
	}
}