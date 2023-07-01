package com.payment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeletePayServlet")
public class DeletePayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     
		String id = request.getParameter("ID");
        
	       boolean isTrue;
	       
	       isTrue = PaymentDBUtil.deletePayment(id);
	       
	       if(isTrue == true) {
   			
			RequestDispatcher dis = request.getRequestDispatcher("Payment.jsp");
			dis.forward(request,response);	
		}
		else {
			
			List<Payment> payDetails = PaymentDBUtil.getPaymentDetails(id);
			request.setAttribute("payDetails",payDetails);
			
			RequestDispatcher dis2 = request.getRequestDispatcher("PaymentSlip.jsp");
			dis2.forward(request,response);	
		
		
	        }
		
	}

}
