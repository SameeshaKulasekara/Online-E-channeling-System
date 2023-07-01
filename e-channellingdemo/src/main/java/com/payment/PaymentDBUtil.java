package com.payment;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PaymentDBUtil {
	
	private static boolean isSuccess;
	private static Connection con;
	private static Statement stmt;
	private static ResultSet rs;
	
	public static List<Payment> validate(String id,String refno){
		
		ArrayList<Payment> pay = new ArrayList<>();
		
		try {
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from Payment where ID = '"+id+"' and RefNo= '"+refno+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				String ID= rs.getString(1);
				String RefNo = rs.getString(2);
				String Name = rs.getString(3);
				String CardNo = rs.getString(4);
				String Month = rs.getString(5);
				int ExpYear= rs.getInt(6);
				int CVV= rs.getInt(7);
				float Amount= rs.getFloat(8);
				
				Payment p = new Payment(ID,RefNo,Name,CardNo,Month,ExpYear,CVV,Amount);
				pay.add(p);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return pay;
	}
	
	
	public static boolean insertPayment(String id,String refno,String name,String cardno,String month,String expYear,String cvv,String amount) {
		  
	    int convertedYear = Integer.parseInt(expYear);
	    int convertedcvv = Integer.parseInt(cvv);
	    float convertedAmount = Float.parseFloat(amount);
		
		boolean isSuccess = false;
		  
		  try {
			  
              con = DBconnect.getConnection();
			  stmt = con.createStatement();
			  String sql = "insert into Payment values('"+id+"','"+refno+"','"+name+"','"+cardno+"','"+month+"','"+convertedYear+"','"+convertedcvv+"','"+convertedAmount+"')";
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
	
	
     public static boolean updatePatient(String id,String refno,String name,String cardno,String month,String expYear,String cvv,String amount) {
    	
	    int convertedYear = Integer.parseInt(expYear);
	    int convertedcvv = Integer.parseInt(cvv);
	    float convertedAmount = Float.parseFloat(amount);
	    
		 
		 try {
			 
			 con = DBconnect.getConnection();
			 stmt = con.createStatement();
			 String sql = "update Payment set RefNo= '"+refno+"',Name= '"+name+"',CardNo= '"+cardno+"',Month= '"+month+"',ExpYear= '"+convertedYear+"',CVV= '"+convertedcvv+"',Amount= '"+convertedAmount+"'"
					       + "where ID= '"+id+"'";
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
     
     
public static List<Payment> getPaymentDetails(String id){
    	 
		 ArrayList<Payment> pay = new ArrayList<>();
		 
		 try {
			 
			 con = DBconnect.getConnection();
			 stmt = con.createStatement();
			 String sql = "select * from Payment where ID = '"+id+"'";
			 rs = stmt.executeQuery(sql);
			 
			 while(rs.next()) {
				 String ID = rs.getString(1);
				 String RefNo = rs.getString(2);
				 String Name = rs.getString(3);
				 String CardNo = rs.getString(4);
				 String Month = rs.getString(5);
				 int ExpYear = rs.getInt(6);
				 int CVV = rs.getInt(7);
				 float Amount = rs.getFloat(8);
				 
				 Payment py = new Payment(ID,RefNo,Name,CardNo,Month,ExpYear,CVV,Amount);
				 pay.add(py);
			 }
			 
		 }
		 catch(Exception e){
			 
			 e.printStackTrace();
		 }
		 
		 return pay;
	 }



    public static boolean deletePayment(String id) {
	 
	
	 try {
		 
		 con = DBconnect.getConnection();
		 stmt = con.createStatement();
		 String sql = "delete from Payment where ID = '"+id+"'";
		 int r = stmt.executeUpdate(sql);
		 
		 if(r > 0) {
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
