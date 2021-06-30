package com.mycompany.staff_management;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/addemployee")
public class addemployee extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		 String empid=request.getParameter("empid");
	        String name=request.getParameter("name");
	        String dob=request.getParameter("dob");
	        String address=request.getParameter("address");
	        String gender=request.getParameter("gender");
	        String jobposition=request.getParameter("jobposition");
	        String email=request.getParameter("email");
	        String contactnu=request.getParameter("contact");
	        
	        boolean isTrue;
	        isTrue=employeedbutil.addemployee(empid, name, dob, address, gender, jobposition, email, contactnu);
	        
	        if(isTrue==true){
	        RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
	        dis.forward(request,response);
	        }
	        else{
	         RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
	        dis2.forward(request,response);
	        }
	    }

	    

	}