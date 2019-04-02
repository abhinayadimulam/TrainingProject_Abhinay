package com.tadigital.ecommerce.customer.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Dao {
	protected static Connection openConnection() {
		Connection con = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tp_db", "root", "");
		} catch (ClassNotFoundException cnfe) {
			cnfe.printStackTrace();
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		}
		
		return con;
	}
	
	protected static Statement openStatement(Connection con) {
		Statement stmt = null;
		
		try {
			stmt = con.createStatement();
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		}
		
		return stmt;
	}
	
	protected static void closeResultSet(ResultSet rs) {
		try {
			if(rs != null) {
				rs.close();
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		}
	}
	
	protected static void closeStatement(Statement stmt) {
		try {
			if(stmt != null) {
				stmt.close();
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		}
	}
	
	protected static void closeConnection(Connection con) {
		try {
			if(con != null) {
				con.close();
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		}
	}
}