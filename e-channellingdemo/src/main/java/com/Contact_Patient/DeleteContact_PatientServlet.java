package com.Contact_Patient;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteContact_PatientServlet")
public class DeleteContact_PatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	       String Username = request.getParameter("name");
	       boolean isTrue;
	       
	       isTrue = contact_patientDBUtil.deletecontact_patient(Username); 
	       
	       if(isTrue == true) {
         			
 			RequestDispatcher dis = request.getRequestDispatcher("contact_patientinsert.jsp");
 			dis.forward(request,response);	
 		}
 		else {
 			
 			List<contact_patient> cpDetails =  contact_patientDBUtil.getcontact_patientDetails(Username);
 			request.setAttribute("cpDetails",cpDetails);
 			
 			RequestDispatcher dis2 = request.getRequestDispatcher("Useraccount.jsp");
 			dis2.forward(request,response);	
 		}
	}

}
