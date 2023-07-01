package com.Search_Doctor;
	
import java.sql.Connection;


import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


	public class search_doctorDBUtil {

		private static boolean isSuccess;
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;
		
		public static List<search_doctor> validate(String Doctor_id, String Doctor_name) {
			

			ArrayList<search_doctor> sd = new ArrayList<>();
			
			try {
				con = Search_DoctorDBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "select * from search_doctor where Doctor_id='"+Doctor_id+"'and Doctor_name='"+Doctor_name+"'";
				rs = stmt.executeQuery(sql);
				
				if(rs.next()) {
					String id = rs.getString(1);
					String fname = rs.getString(2);
					String specialist = rs.getString(3);
					String Hospital = rs.getString(4);
					String Date = rs.getString(5);

					
					search_doctor s = new search_doctor(id,fname,specialist,Hospital,Date);
					sd.add(s);
				}
							
			}
			catch(Exception e) {
				e.printStackTrace();
			}		
			
			return sd;
			
		}

		public static boolean insertsearch_doctor(String Doctor_id, String Doctor_name, String specialization, String hospital, String date) {
			
			boolean isSuccess = false;
			
			try {
				con = Search_DoctorDBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "insert into search_doctor values('"+Doctor_id+"','"+Doctor_name+"','"+specialization+"','"+hospital+"','"+date+"')";
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

		 public static boolean updatesearch_doctor(String Doctor_id, String Doctor_name, String specialization, String hospital, String date) {
		    	
		    	try {
		    		
		    		con = Search_DoctorDBConnect.getConnection();
		    		stmt = con.createStatement();
		    		String sql = "update search_doctor set Doctor_name='"+Doctor_name+"', specialization='"+specialization+"',hospital='"+hospital+"', date='"+date+"'"
		    				+ "where Doctor_id='"+Doctor_id+"'";
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

		public static List<search_doctor> getsearch_doctorDetails(String Doctor_id) {
	    	
	    	ArrayList<search_doctor> sd = new ArrayList<>();
	    	
	    	try {
	    		
	    		con = Search_DoctorDBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "select * from search_doctor where Doctor_id='"+Doctor_id+"'";
	    		rs = stmt.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			String id = rs.getString(1);
					String fname = rs.getString(2);
					String specialist = rs.getString(3);
					String Hospital = rs.getString(4);
					String Date = rs.getString(5);
	    			search_doctor s = new search_doctor(id,fname,specialist,Hospital,Date);
	    			sd.add(s);
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}	
	    	return sd;
		}
	    	
	    public static boolean deletesearch_doctor(String Doctor_id) {
	   		 
	   		 try {
	   			 
	   			 con = Search_DoctorDBConnect.getConnection();
	   			 stmt = con.createStatement(); 
	   			 String sql = "delete from search_doctor where Doctor_id = '"+Doctor_id+"'";
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
