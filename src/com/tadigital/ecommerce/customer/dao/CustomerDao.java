package com.tadigital.ecommerce.customer.dao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

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
	
	public static boolean updateCustomer(String oldpass, String newpass) {
		boolean status = false;
		String oldpas=oldpass;
		String newpas=newpass;
		Connection con = openConnection();
		Statement stmt = openStatement(con);
		
		try {
			String sql = "UPDATE cust_info " +
						 "SET cust_pwd='"+newpass+"' WHERE cust_pwd='"+oldpas+"'";
			
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
	public static boolean updateCustomerdetails(String fname,String lname,String gender,String address,String city,String zip,String state,String country,String cont,String mail) {
		boolean status = false;
		Connection con = openConnection();
		Statement stmt = openStatement(con);
		
		
		try {
			StringBuffer sql = new StringBuffer("UPDATE cust_info SET ");
			boolean flag=false;
			
			if(fname!="")
			{
				sql.append("cust_fname='"+ fname + "'");
				flag=true;
			}
			
			if(lname!="")
			{
				if(flag)
					sql.append(",");
				sql.append("cust_lname='"+lname + "'");
				flag=true;
			}
			
			if(gender!="")
			{
				if(flag)
					sql.append(",");
				sql.append("cust_gen='"+gender + "'");
				flag=true;
			}
			
			if(address!="")
			{
				if(flag)
					sql.append(",");
				sql.append("cust_addr='"+address + "'");
				flag=true;
			}
			
			if(city!="")
			{
				if(flag)
					sql.append(",");
				sql.append("cust_city='"+city + "'");
				flag=true;
			}
			
			if(zip!="")
			{
				if(flag)
					sql.append(",");
					sql.append("cust_zip='"+zip + "'");
					flag=true;
			}
			
			if(state!="")
			{
				if(flag)
					sql.append(",");
				sql.append("cust_state='"+state + "'");
				flag=true;
			}
			
			if(country!="")
			{
				if(flag)
					sql.append(",");
				sql.append("cust_cntry='"+country + "'");
				flag=true;
			}
			
			if(cont!="")
			{
				if(flag)
					sql.append(",");
				sql.append("cust_cont='"+cont + "'");
				flag=true;
			}
			
			if(mail!="")
			{
				if(flag)
					sql.append(",");
				sql.append("cust_email='"+mail + "'");
				flag=true;
			}
			
			sql.append(" WHERE cust_email='"+mail+"'");
				
			int rows = stmt.executeUpdate(sql.toString()); 
			
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