package com.appointment;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Appointinsert")
public class Appointinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String pname=request.getParameter("Patient name");
		String age=request.getParameter("Age");
		String nic=request.getParameter("NIC");
		String guardian=request.getParameter("Guardian name");
		String address=request.getParameter("Address");
		String telephone=request.getParameter("Telephone no");
		String email=request.getParameter("email");
		String passsword=request.getParameter("password");
		String gender=request.getParameter("gender");
		String doctor=request.getParameter("Doctor_name");
		
		boolean IsTrue;
		
		IsTrue=AppointDBUtil.insertpatientdetails(pname, age, nic, guardian, address, telephone, email, passsword, gender, doctor);
	
	if(IsTrue==true) {
		RequestDispatcher dis= request.getRequestDispatcher("Success.jsp");
	dis.forward(request, response);
	
	}else {
		RequestDispatcher dis2=request.getRequestDispatcher("Unsuccess.jsp");
	  dis2.forward(request, response);
	}
	
	
	
	
	
	}

}
