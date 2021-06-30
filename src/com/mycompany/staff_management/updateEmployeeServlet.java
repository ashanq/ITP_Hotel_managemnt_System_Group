package com.mycompany.staff_management;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateEmployeeServlet")
public class updateEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id=request.getParameter("empid");
		String name=request.getParameter("name");
		String dob=request.getParameter("dob");
		String address=request.getParameter("address");
		String gender=request.getParameter("gender");
		String jobposition=request.getParameter("jobposition");
		String email=request.getParameter("email");
		String contact=request.getParameter("contact");
		
		boolean isTrue;
		
		isTrue=employeedbutil.updateemployee(id, name, dob, address, gender, jobposition, email, contact);
		
		if(isTrue==true) {
			
			List<Employee> empDetails=employeedbutil.getEmployeeDetails(id);
			request.setAttribute("empDetails",empDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("employeeaccount.jsp");
			dis.forward(request,response);
		}
		else {
			List<Employee> empDetails=employeedbutil.getEmployeeDetails(id);
			request.setAttribute("empDetails",empDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("employeeaccount.jsp");
			dis.forward(request,response);
		}
	}

}
