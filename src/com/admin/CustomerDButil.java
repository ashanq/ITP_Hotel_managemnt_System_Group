package com.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.admin.DBConnect;




public class CustomerDButil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	


    
    
    public ArrayList<customer> selectAllUsers() {

		
		ArrayList<customer> users = new ArrayList<>();
		// Step 1: Establishing a Connection
		try {
				
				 con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "select * from customer";
	    		rs = stmt.executeQuery(sql);


			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				
				customer cus=new customer(0, sql, sql, sql, sql, sql, sql, sql, sql, sql);
				
				cus.setIdCustomer(rs.getInt(1));
				cus.setFname(rs.getString(2));
				cus.setLname(rs.getString(3));
				cus.setEmail(rs.getString(4));
				cus.setPhoneNo(rs.getString(5));
				cus.setNICno(rs.getString(6));
				cus.setAddress(rs.getString(7));
				cus.setGender(rs.getString(8));
				cus.setUsername(rs.getString(9));
				cus.setPassword(rs.getString(10));
				
				users.add(cus);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return users;
	}
    
    
	
public static boolean validate(String idcustomer) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where idcustomer='"+idcustomer+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
    
    public static List<customer> getcustomer(String idcustomer){
		
		ArrayList<customer> customer= new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql="select * from customer where idcustomer='"+idcustomer+"'";
			rs=stmt.executeQuery(sql);
			
			while(rs.next()) {
				 int id=rs.getInt(1);
		    	 String fname=rs.getString(2);
		    	 String lname=rs.getString(3);
		    	 String email=rs.getString(4);
		    	 String phoneNo=rs.getString(5);
		    	 String NICno=rs.getString(6);
		    	 String address=rs.getString(7);
		    	 String gender=rs.getString(8);
		    	 String username=rs.getString(9);
		    	 String password=rs.getString(10);
		    	 
		    	 
		    	
		    	customer cus=new customer(id,fname,lname,email,phoneNo,NICno,address,gender,username,password);
		    	 customer.add(cus);
		    	 
			}
		}
		catch(Exception e) {
			
			e.printStackTrace();
			
		}
		
		
		return customer;
	}
    
    
    
    
public void updatecustomer(int idCustomer, String fname,String lname, String email, String phoneNo,String NICno,String address,String gender, String username, String password) {
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update customer set fname='"+fname+"',lname='"+lname+"',email='"+email+"',phoneNo='"+phoneNo+"',NICno='"+NICno+"',address='"+address+"',gender='"+gender+"',username='"+username+"',password='"+password+"'"
    				+ "where idcustomer='"+idCustomer+"'";
    		 stmt.executeUpdate(sql);
    	}
    		
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	
    }




public void deleteCustomer(int idCustomer) {
	
	//int convId = Integer.parseInt(idCustomer);
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "delete from customer where idCustomer='"+idCustomer+"'";
		//((PreparedStatement) stmt).setInt(1,idCustomer);
		 stmt.execute(sql);
	
		
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	
}

   

public customer getCustomerD(int cid) {
	
	
	customer cu=new customer(cid, null, null, null, null, null, null, null, null, null);
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from customer where idcustomer='"+cid+"'";
		//((PreparedStatement) stmt).setInt(1,cid);
		 rs = stmt.executeQuery(sql);
		
		
		while (rs.next()) {
			
			
			
			cu.setIdCustomer(rs.getInt(1));
			cu.setFname(rs.getString(2));
			cu.setLname(rs.getString(3));
			cu.setEmail(rs.getString(4));
			cu.setPhoneNo(rs.getString(5));
			cu.setNICno(rs.getString(6));
			cu.setAddress(rs.getString(7));
			cu.setGender(rs.getString(8));
			cu.setUsername(rs.getString(9));
			cu.setPassword(rs.getString(10));
			
			
		}
		
		
	
		
	}catch (Exception e) {
		e.printStackTrace();
	}
	return cu;
	
	
	
}





}
    

