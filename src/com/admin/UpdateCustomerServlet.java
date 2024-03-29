package com.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@MultipartConfig(maxFileSize = 16177215)
@WebServlet("/UpdateCustomerServlet")
public class UpdateCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int cid=Integer.parseInt(request.getParameter("cid"));
		
		CustomerDButil cus=new CustomerDButil();
	
		customer customer =new customer(cid, null, null, null, null, null, null, null, null, null);
		
		customer = cus.getCustomerD(cid);
		
		request.setAttribute("customer", customer);
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/updatecustomer.jsp");
		dispatcher.forward(request,response);
	}

}
