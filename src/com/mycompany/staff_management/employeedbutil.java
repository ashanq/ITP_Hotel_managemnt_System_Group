			package com.mycompany.staff_management;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class employeedbutil {
	
	private static boolean isSuccess;
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	
	
		public static boolean validate(String employeeid) {
	
		
		
		try {
			 con = DBConnect.getConnection();
		     stmt =con.createStatement();
		     
		     String sql="select * from employee_details where Emp_ID='"+employeeid+"'";
		     rs = stmt.executeQuery(sql);
		     
		     if(rs.next()) {
		    	 isSuccess=true;
		    	
		    	 
		     }
		     else {
		    	 isSuccess=false;
		     }
			
		}
		
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		//return emp;
	}
	
		public static List<Employee> getemployee(String employeeid){
			
			ArrayList<Employee> employee= new ArrayList<>();
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql="select * from employee_details where Emp_ID='"+employeeid+"'";
				rs=stmt.executeQuery(sql);
				
				while(rs.next()) {
					 int id=rs.getInt(1);
			    	 String name=rs.getString(2);
			    	 String dob=rs.getString(3);
			    	 String address=rs.getString(4);
			    	 String gender=rs.getString(5);
			    	 String jobposition=rs.getString(6);
			    	 String email=rs.getString(7);
			    	 String contact=rs.getString(8);
			    	 
			    	 Employee emp=new Employee(id,name,dob,address,gender,jobposition,email,contact);
			    	 employee.add(emp);
			    	 
			    	 
				}
			}
			catch(Exception e) {
				
				
				
			}
			
			
			return employee;
		}
	
	public static boolean addemployee(String empid,String name,String dob,String address,String gender,String jobposition,String email,String contact){
		    
	        boolean isSuccess = false;
	        
	        try{
	       
	        
	     con = DBConnect.getConnection();
	     stmt =con.createStatement();
	        
	        String sql="insert into employee_details values('"+empid+"','"+name+"','"+dob+"','"+address+"','"+gender+"','"+jobposition+"','"+email+"','"+contact+"')";
	        int rs = stmt.executeUpdate(sql);
	        
	        if(rs > 0){
	        isSuccess = true;
	        }
	        else{
	        isSuccess = false;
	        }
	        }
	        catch(Exception e){
	        e.printStackTrace();
	        }
	        
	        return isSuccess;
	    }
	    
	public static boolean updateemployee(String id,String name,String dob,String address,String gender,String jobposition,String email,String contact) {
	
		try {
			con=DBConnect.getConnection();
			stmt=con.createStatement();
			String sql="update employee_details set Name='"+name+"',DOB='"+dob+"',Address='"+address+"',Gender='"+gender+"',Job_Position='"+jobposition+"',Email='"+email+"',Contact_Number='"+contact+"'"
					+"where Emp_ID='"+id+"'";
			int rs=stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	return isSuccess;
	}
	public static List<Employee> getEmployeeDetails(String Id){
		int convertedID=Integer.parseInt(Id);
		
		ArrayList<Employee> emp=new ArrayList<>();
		try {
			
			con = DBConnect.getConnection();
			stmt=con.createStatement();
			String sql = "select * from employee_details where Emp_ID='"+convertedID+"'";
			rs=stmt.executeQuery(sql);
			
			while(rs.next()) {
				int Emp_ID=rs.getInt(1);
				String Name=rs.getString(2);
				String DOB=rs.getString(3);
				String Address=rs.getString(4);
				String Gender=rs.getString(5);
				String Job_Position=rs.getString(6);
				String Email=rs.getString(7);
				String Contact_Number=rs.getString(8);
				
				Employee e = new Employee(Emp_ID,Name,DOB,Address,Gender,Job_Position,Email,Contact_Number);
				emp.add(e);
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return emp;
	}
	
	public static boolean deleteEmployee(String id) {
		
		int convId = Integer.parseInt(id);
		
		try {
			con=DBConnect.getConnection();
			stmt=con.createStatement();
			String sql="delete from employee_details where Emp_ID='"+convId+"' ";
			int r=stmt.executeUpdate(sql);
			
			if(r>0){
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
}

