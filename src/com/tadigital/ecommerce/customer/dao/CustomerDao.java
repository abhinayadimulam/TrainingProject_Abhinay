package com.tadigital.ecommerce.customer.dao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.tadigital.ecommerce.customer.entity.Customer;

public class CustomerDao extends Dao {
	public static boolean selectCustomerByEmailAndPassword(Customer customer) {
		boolean status = false;
		
		Connection con = openConnection();
		Statement stmt = openStatement(con);
		ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM cust_info WHERE cust_email = '" + customer.getEmail() + "' AND cust_pwd = '" + customer.getPassword() + "'";
			
			rs = stmt.executeQuery(sql);
			if(rs.next()) {
				status = true;
				
				customer.setId(rs.getInt(1));
				customer.setName(rs.getString(2));
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		} finally {
			closeStatement(stmt);
			closeResultSet(rs);
			closeConnection(con);
		}
		
		return status;
	}
	
	public static boolean insertCustomer(Customer customer) {
		boolean status = false;
		
		Connection con = openConnection();
		Statement stmt = openStatement(con);
		
		try {
			String sql = "INSERT INTO cust_info(cust_name, cust_email, cust_pwd) " +
						 "VALUES('" + customer.getName() + "', '" + customer.getEmail() + "', '" + customer.getPassword() + "')";
			
			int rows = stmt.executeUpdate(sql);
			if(rows != 0) {
				status = true;
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		} finally {
			closeStatement(stmt);
			closeConnection(con);
		}
		
		return status;
	}
	
	public static ArrayList<Customer> selectAllCustomers() {
		ArrayList<Customer> customerList = new ArrayList<>(); 
		
		Connection con = openConnection();
		Statement stmt = openStatement(con);
		ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM customer_information";
			
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				Customer customer = new Customer();				
				customer.setId(rs.getInt(1));
				customer.setName(rs.getString(12));
				customer.setEmail(rs.getString(3));
				customer.setPassword(rs.getString(5));
				
				customerList.add(customer);
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		} finally {
			closeStatement(stmt);
			closeResultSet(rs);
			closeConnection(con);
		}
		
		return customerList;
	}

}