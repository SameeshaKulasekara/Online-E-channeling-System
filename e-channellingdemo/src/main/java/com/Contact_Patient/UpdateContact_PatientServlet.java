package com.Contact_Patient;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateContact_PatientServlet")
public class UpdateContact_PatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			String Username = request.getParameter("name");
			String Email = request.getParameter("email");
			String Phone = request.getParameter("mobile");
			String Message = request.getParameter("message");
			
			boolean isTrue;
			
			isTrue = contact_patientDBUtil.updatecontact_patient(Username, Email, Phone, Message);
			
			if(isTrue == true) {
				List<contact_patient> cpDetails = contact_patientDBUtil.getcontact_patientDetails(Username);
				request.setAttribute("cpDetails", cpDetails);
				
				RequestDispatcher dis = request.getRequestDispatcher("Useraccount.jsp");
				dis.forward(request, response);
			}
			else {
				List<contact_patient> cpDetails = contact_patientDBUtil.getcontact_patientDetails(Username);
				request.setAttribute("cpDetails", cpDetails);
				
				RequestDispatcher dis = request.getRequestDispatcher("Useraccount.jsp");
				dis.forward(request, response);
			}
		}

	
}


