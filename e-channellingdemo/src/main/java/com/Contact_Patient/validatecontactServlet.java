package com.Contact_Patient;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/validatecontactServlet")
public class validatecontactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Username = request.getParameter("name");
		String Email = request.getParameter("email");
		
		try {
			
		List<contact_patient> cpDetails = contact_patientDBUtil.validate(Username, Email);
		request.setAttribute("cpDetails", cpDetails);
		
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("Useraccount.jsp");
		dis.forward(request,response);	
	

	}

}
