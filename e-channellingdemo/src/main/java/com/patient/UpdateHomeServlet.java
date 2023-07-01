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
 * Servlet implementation class UpdateHomeServlet
 */
@WebServlet("/UpdateHomeServlet")
public class UpdateHomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    String id = request.getParameter("id");
		    String name = request.getParameter("fname");
            String hospital = request.getParameter("hospital");
            String province = request.getParameter("province");
            String city = request.getParameter("city");
            
            boolean isTrue;
            
            isTrue = HomeDBUtil.updatePatient(id, name, hospital, province, city);
            
            if(isTrue == true) {
            	
            	List<Patient> patDetails = HomeDBUtil.getPatientDetails(id);
            	request.setAttribute("patDetails",patDetails);
            			
    			RequestDispatcher dis = request.getRequestDispatcher("HospitalAccount.jsp");
    			dis.forward(request,response);	
    		}
    		else {
    			RequestDispatcher dis2 = request.getRequestDispatcher("Unsuccess.jsp");
    			dis2.forward(request,response);	
    		}
	}

}
