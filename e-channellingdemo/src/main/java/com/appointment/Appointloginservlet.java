package com.appointment;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/appoint_login_servlet")
public class Appointloginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String email = request.getParameter("email");
		String password = request.getParameter("psw");
		boolean isTrue;
		
		isTrue = AppointDBUtil.validate(email, password);
		
		if (isTrue == true) {
			List<Patient> apoDetails = AppointDBUtil.getPatient(email);
			request.setAttribute("apoDetails", apoDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("receipt.jsp");
			dis.forward(request, response);
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your email or password is incorrect');");
			out.println("location='success.jsp'");
			out.println("</script>");
		}
		
		
		
		
		
	}

}
