package com.mycompany.inventry_management;

import java.sql.Connection;



import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class inventrydbutil {
	
	private static boolean isSuccess;
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	
		public static boolean validate(String inventryid) {

		
		
		try {
			 con = DBConnect.getConnection();
		     stmt =con.createStatement();
		     
		     String sql="select * from inventry_details where Item_ID='"+inventryid+"'";
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
		
	}
	
		public static List<Inventry> getinventry(String inventryid){
			
			ArrayList<Inventry> inventry= new ArrayList<>();
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql="select * from inventry_details where Item_ID='"+inventryid+"'";
				rs=stmt.executeQuery(sql);
				
				while(rs.next()) {
					 int id=rs.getInt(1);
			    	 String name=rs.getString(2);
			    	 String expdate=rs.getString(3);
			    	 String catagory=rs.getString(4);
			    	 String quntity=rs.getString(5);
			    	 String unitPrice=rs.getString(6);
			    	 String reciveDate=rs.getString(7);
			    	 String action=rs.getString(8);
			    	 
			    	 Inventry item=new Inventry(id,name,expdate,catagory,quntity,unitPrice,reciveDate,action);
			    	 inventry.add(item);
			    	 
			    	 
				}
			}
			catch(Exception e) {
				
				
				
			}
			
			
			return inventry;
		}
	
	public static boolean addinventry(String itemid,String name,String expdate,String catagory,String quntity,String unitPrice,String reciveDate,String action){
		    
	        boolean isSuccess = false;
	        
	        try{
	       
	        
	     con = DBConnect.getConnection();
	     stmt =con.createStatement();
	        
	        String sql="insert into inventry_details values('"+itemid+"','"+name+"','"+expdate+"','"+catagory+"','"+quntity+"','"+unitPrice+"','"+reciveDate+"','"+action+"')";
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
	    
	public static boolean updateinventry(String id,String name,String expdate,String catagory,String quntity,String unitPrice,String reciveDate,String action) {
	
		try {
			con=DBConnect.getConnection();
			stmt=con.createStatement();
			String sql="update inventry_details set Name='"+name+"',Exp_date='"+expdate+"',Catagory='"+catagory+"',Quntity='"+quntity+"',Unit_Price='"+unitPrice+"',Recive_date='"+reciveDate+"',Action='"+action+"'"
					+"where Item_ID='"+id+"'";
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
	public static List<Inventry> getInventryDetails(String Id){
		int convertedID=Integer.parseInt(Id);
		
		ArrayList<Inventry> item=new ArrayList<>();
		try {
			
			con = DBConnect.getConnection();
			stmt=con.createStatement();
			String sql = "select * from inventry_details where Item_ID='"+convertedID+"'";
			rs=stmt.executeQuery(sql);
			
			while(rs.next()) {
				int Item_ID=rs.getInt(1);
				String Name=rs.getString(2);
				String Exp_date=rs.getString(3);
				String Catagory=rs.getString(4);
				String Quntity=rs.getString(5);
				String Unit_Price=rs.getString(6);
				String Recive_date=rs.getString(7);
				String Action=rs.getString(8);
				
				Inventry e = new Inventry(Item_ID,Name,Exp_date,Catagory,Quntity,Unit_Price,Recive_date,Action);
				item.add(e);
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return item;
	}
	
	public static boolean deleteInventry(String id) {
		
		int convId = Integer.parseInt(id);
		
		try {
			con=DBConnect.getConnection();
			stmt=con.createStatement();
			String sql="delete from inventry_details where Item_ID='"+convId+"' ";
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
	
	
	//code for retreving all inventory details from the table
	public static List<Inventry> getAllInventories(){
		
		
		
		ArrayList<Inventry> item=new ArrayList<>();
		try {
			
			con = DBConnect.getConnection();
			stmt=con.createStatement();
			String sql = "select * from inventry_details";
			rs=stmt.executeQuery(sql);
			
			while(rs.next()) {
				int Item_ID=rs.getInt(1);
				String Name=rs.getString(2);
				String Exp_date=rs.getString(3);
				String Catagory=rs.getString(4);
				String Quntity=rs.getString(5);
				String Unit_Price=rs.getString(6);
				String Recive_date=rs.getString(7);
				String Action=rs.getString(8);
				
				Inventry e = new Inventry(Item_ID,Name,Exp_date,Catagory,Quntity,Unit_Price,Recive_date,Action);
				item.add(e);
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return item;
	}
	
	
	
	
}

