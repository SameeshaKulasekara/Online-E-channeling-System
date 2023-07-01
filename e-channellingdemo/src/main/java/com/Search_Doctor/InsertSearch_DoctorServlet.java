package com.Search_Doctor;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/InsertSearch_DoctorServlet")
public class InsertSearch_DoctorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String Doctor_id = request.getParameter("id");
			String Doctor_name = request.getParameter("fname");
			String specialization = request.getParameter("specialist");
			String hospital = request.getParameter("hospital");
			String date = request.getParameter("date");

			
			boolean isTrue;
			
			isTrue = search_doctorDBUtil.insertsearch_doctor(Doctor_id, Doctor_name, specialization, hospital, date);
			
			if(isTrue == true) {
				RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
				dis.forward(request, response);
			} else {
				RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
				dis2.forward(request, response);
			}
			
		

		}

}
