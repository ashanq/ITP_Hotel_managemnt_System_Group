package com.mycompany.inventry_management;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class getAllInventoriesServlet
 */
@WebServlet("/getAllInventoriesServlet")
public class getAllInventoriesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static List<Inventry> myIn;

       
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			
			//retrieving all inventories
			myIn = inventrydbutil.getAllInventories();
			
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			//redirecting to MyEventsUI with relevant details.
			if(myIn != null) {
				System.out.println(myIn);
				request.setAttribute("myIn", myIn);
				RequestDispatcher dis = request.getRequestDispatcher("inventryList.jsp");
				dis.forward(request, response);
			}
	}

}
