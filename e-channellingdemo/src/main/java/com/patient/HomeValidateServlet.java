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
 * Servlet implementation class HomeValidateServlet
 */
@WebServlet("/HomeValidateServlet")
public class HomeValidateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String ID = request.getParameter("id");
		String Name = request.getParameter("fname");
		
		try {
			
		List<Patient> patDetails = HomeDBUtil.validate(ID, Name);
		request.setAttribute("patDetails", patDetails);
		
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("HospitalAccount.jsp");
		dis.forward(request,response);	
	}

}
