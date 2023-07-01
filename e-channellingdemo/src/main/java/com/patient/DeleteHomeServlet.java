package com.patient;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteHomeServlet
 */
@WebServlet("/DeleteHomeServlet")
public class DeleteHomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		       String id = request.getParameter("id");
		       boolean isTrue;
		       
		       isTrue = HomeDBUtil.deletePatient(id); 
		       
		       if(isTrue == true) {
	            			
	    			RequestDispatcher dis = request.getRequestDispatcher("Home.jsp");
	    			dis.forward(request,response);	
	    		}
	    		else {
	    			
	    			List<Patient> patDetails = HomeDBUtil.getPatientDetails(id);
	    			request.setAttribute("patDetails",patDetails);
	    			
	    			RequestDispatcher dis2 = request.getRequestDispatcher("HospitalAccount.jsp");
	    			dis2.forward(request,response);	
	    		}
	}

}
