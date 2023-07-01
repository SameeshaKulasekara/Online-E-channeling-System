package com.payment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdatePayServlet")
public class UpdatePayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("ID");
	    String refeno = request.getParameter("refer");
        String name = request.getParameter("cardname");
        String cardno = request.getParameter("cardnumber");
        String month = request.getParameter("expmonth");
        String year = request.getParameter("expyear");
        String cvv = request.getParameter("cvv");
        String amount = request.getParameter("amount");
        
        boolean isTrue;
        
        isTrue = PaymentDBUtil.updatePatient(id, refeno, name, cardno, month, year, cvv, amount);
        
        if(isTrue == true) {
        	
        	List<Payment> payDetails = PaymentDBUtil.getPaymentDetails(id);
        	request.setAttribute("payDetails",payDetails);
        			
			RequestDispatcher dis = request.getRequestDispatcher("PaymentSlip.jsp");
			dis.forward(request,response);	
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("Unsuccess.jsp");
			dis2.forward(request,response);	
		}
		
		
	}

}
