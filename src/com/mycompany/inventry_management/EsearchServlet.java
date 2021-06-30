package com.mycompany.inventry_management;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/EsearchServlet")
public class EsearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	
	{
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String inventryid=request.getParameter("sid");
		boolean isTrue;
		
		
		isTrue=inventrydbutil.validate(inventryid);
		
		
		if(isTrue==true) {
			
			List<Inventry> itemDetails = inventrydbutil.getinventry(inventryid);	
			request.setAttribute("itemDetails",itemDetails);
			
			RequestDispatcher dis= request.getRequestDispatcher("inventryaccount.jsp");
			dis.forward(request,response);
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your Item Code is incorrect!');");
			out.println("location='inventryaccount.jsp'");
			out.println("</script>");
			
		}
	}
}
