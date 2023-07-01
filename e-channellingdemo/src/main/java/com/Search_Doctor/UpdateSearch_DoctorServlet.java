package com.Search_Doctor;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateSearch_DoctorServlet")
public class UpdateSearch_DoctorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Doctor_id = request.getParameter("id");
		String Doctor_name = request.getParameter("fname");
		String specialization = request.getParameter("specialist");
		String hospital = request.getParameter("hospital");
		String date = request.getParameter("date");
		
		boolean isTrue;
	       
	       isTrue = search_doctorDBUtil.updatesearch_doctor(Doctor_id, Doctor_name, specialization, hospital, date); 
	       
	       if(isTrue == true) {
	    		List<search_doctor> sdDetails = search_doctorDBUtil.getsearch_doctorDetails(Doctor_id);
				request.setAttribute("sdDetails", sdDetails);
				
				RequestDispatcher dis = request.getRequestDispatcher("Doctoraccount.jsp");
				dis.forward(request, response);
			}
			else {
				List<search_doctor> sdDetails = search_doctorDBUtil.getsearch_doctorDetails(Doctor_id);
				request.setAttribute("sdDetails", sdDetails);
				
				RequestDispatcher dis = request.getRequestDispatcher("Doctoraccount.jsp");
				dis.forward(request, response);	
		}
	}

}
