package com.payment;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PaymentInsert")
public class PaymentInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String id = request.getParameter("ID");
		String refNo = request.getParameter("refer");
		String name = request.getParameter("cardname");
		String cardNo = request.getParameter("cardnumber");
		String month = request.getParameter("expmonth");
		String expYear = request.getParameter("expyear");
		String cvv = request.getParameter("cvv");
		String amount = request.getParameter("amount");
		
		boolean isTrue;
		
		isTrue = PaymentDBUtil.insertPayment(id, refNo, name, cardNo, month, expYear, cvv, amount);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("Success.jsp");
			dis.forward(request,response);	
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("Unsuccess.jsp");
			dis2.forward(request,response);	
		}
		
		
	}

}
