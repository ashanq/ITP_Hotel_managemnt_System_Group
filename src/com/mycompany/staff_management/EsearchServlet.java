package com.mycompany.staff_management;

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

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String employeeid=request.getParameter("eid");
		boolean isTrue;
		
		
		isTrue=employeedbutil.validate(employeeid);
		
		
		if(isTrue==true) {
			
			List<Employee> empDetails = employeedbutil.getemployee(employeeid);	
			request.setAttribute("empDetails",empDetails);
			
			RequestDispatcher dis= request.getRequestDispatcher("employeeaccount.jsp");
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
