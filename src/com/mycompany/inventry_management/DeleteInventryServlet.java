package com.mycompany.inventry_management;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteEmployeeServlet")
public class DeleteInventryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id=request.getParameter("itemid");
		
		boolean isTrue;
		isTrue=inventrydbutil.deleteInventry(id);
		
		if(isTrue==true) {
			RequestDispatcher dispatcher=request.getRequestDispatcher("success.jsp");
			dispatcher.forward(request, response);
		}
		else {
			List<Inventry> itemDetails = inventrydbutil.getInventryDetails(id);
			request.setAttribute("itemDetails",itemDetails);
			
			RequestDispatcher dispatcher=request.getRequestDispatcher("inventryaccount.jsp");
			dispatcher.forward(request, response);
		}
	}

}
