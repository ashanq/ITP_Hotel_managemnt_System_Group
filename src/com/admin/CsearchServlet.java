package com.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CsearchServlet
 */
@WebServlet("/CsearchServlet")
public class CsearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String idcustomer=request.getParameter("idcustomer");
		boolean isTrue;
		
		
		isTrue=CustomerDButil.validate(idcustomer);
		
		
		if(isTrue==true) {
			
			List<customer> cusDetails = CustomerDButil.getcustomer(idcustomer);	
			request.setAttribute("cusDetails",cusDetails);
			
			RequestDispatcher dis= request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request,response);
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your Employee ID is incorrect!');");
			out.println("location='SearchE.jsp'");
			out.println("</script>");
			
			
		}
		
	}
		
		
	}


