package com.Search_Doctor;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteSearch_DoctorServlet")
public class DeleteSearch_DoctorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Doctor_id = request.getParameter("id");
	       boolean isTrue;
	       
	       isTrue = search_doctorDBUtil.deletesearch_doctor(Doctor_id); 
	       
	       if(isTrue == true) {
      			
			RequestDispatcher dis = request.getRequestDispatcher("search_doctorinsert.jsp");
			dis.forward(request,response);	
		}
		else {
			
			List<search_doctor> sdDetails =  search_doctorDBUtil.getsearch_doctorDetails(Doctor_id);
			request.setAttribute("sdDetails",sdDetails);
			
			RequestDispatcher dis2 = request.getRequestDispatcher("Doctoraccount.jsp");
			dis2.forward(request,response);	
		}
	}

}
