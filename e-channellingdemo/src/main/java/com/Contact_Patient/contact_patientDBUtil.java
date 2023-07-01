package com.Contact_Patient;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class contact_patientDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static List<contact_patient> validate(String Username, String Email) {
		

		ArrayList<contact_patient> cp = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from contact_patient where Username='"+Username+"'and Email='"+Email+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				String name = rs.getString(1);
				String email = rs.getString(2);
				String mobile = rs.getString(3);
				String message = rs.getString(4);
				
				contact_patient c = new contact_patient(name,email,mobile,message);
				cp.add(c);
			}
						
		}
		catch(Exception e) {
			e.printStackTrace();
		}		
		
		return cp;
		
	}

	public static boolean insertcontact_patient(String Username, String Email, String Phone, String Message) {
		
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into contact_patient values('"+Username+"','"+Email+"','"+Phone+"','"+Message+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}
		
		catch (Exception e) {
			e.printStackTrace();
		}
			return isSuccess;
	}

	 public static boolean updatecontact_patient(String Username, String Email, String Phone, String Message) {
	    	
	    	try {
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "update contact_patient set Email='"+Email+"',Phone='"+Phone+"',Message='"+Message+"'"
	    				+ "where Username='"+Username+"'";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		}
	    		else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}
	    	
	    	return isSuccess;
	    }

	public static List<contact_patient> getcontact_patientDetails(String Username) {
    	
    	ArrayList<contact_patient> cp = new ArrayList<>();
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from contact_patient where Username='"+Username+"'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			String name = rs.getString(1);
    			String email = rs.getString(2);
    			String mobile = rs.getString(3);
    			String message = rs.getString(4);
    			
    			contact_patient c = new contact_patient(name,email,mobile,message);
    			cp.add(c);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return cp;
	}
    	
    public static boolean deletecontact_patient(String Username) {
   		 
   		 try {
   			 
   			 con = DBConnect.getConnection();
   			 stmt = con.createStatement(); 
   			 String sql = "delete from contact_patient where Username = '"+Username+"'";
   			 int rs = stmt.executeUpdate(sql);
   			 
   			 if(rs > 0) {
   				 isSuccess = true;
   			  }
   			  else {
   				  isSuccess = false;
   			  }
   			 
   		 }
   		 catch(Exception e) {
   			 e.printStackTrace();
   		 }
   		 
   		 return isSuccess;
    
	}
}
