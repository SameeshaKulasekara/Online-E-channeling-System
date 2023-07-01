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
 * Servlet implementation class HomeInsert
 */

@WebServlet ("/HomeInsert")
public class HomeInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
  

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String ID = request.getParameter("id");
		String Name = request.getParameter("fname");
		String Hospital = request.getParameter("hospital");
		String Province = request.getParameter("province");
		String City = request.getParameter("city");
		
		boolean isTrue;
		
		isTrue = HomeDBUtil.insertPatient(ID, Name, Hospital, Province, City);
		
		if(isTrue == true) {
			RequestDispatcher rdis = request.getRequestDispatcher("Success.jsp");
			rdis.forward(request,response);	
		}
		else {
			RequestDispatcher rdis2 = request.getRequestDispatcher("Unsuccess.jsp");
			rdis2.forward(request,response);	
		}
	}

}
