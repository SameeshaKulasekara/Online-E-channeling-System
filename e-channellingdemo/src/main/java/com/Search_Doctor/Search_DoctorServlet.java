package com.Search_Doctor;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/Search_DoctorServlet")
public class Search_DoctorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Doctor_id = request.getParameter("id");
		String Doctor_name = request.getParameter("fname");
		String specialization = request.getParameter("specialist");
		String hospital = request.getParameter("hospital");
		String date = request.getParameter("date");

		
		try {
			List<search_doctor> sdDetails = search_doctorDBUtil.validate(Doctor_id, Doctor_name);
			request.setAttribute("sdDetails", sdDetails);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		
		RequestDispatcher dis = request.getRequestDispatcher("Doctoraccount.jsp");
		dis.forward(request, response);
		
		
		
	}


}
