package com.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateC
 */
@WebServlet("/UpdateC")
public class UpdateC extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		int cid=Integer.parseInt(request.getParameter("idCustomer"));
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String email=request.getParameter("email");
		String phoneNo=request.getParameter("phoneNo");
		String NICno=request.getParameter("NICno");
		String address=request.getParameter("address");
		String gender=request.getParameter("gender");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		CustomerDButil cus=new CustomerDButil();
		cus.updatecustomer(cid, fname, lname, email, phoneNo, NICno, address, gender, username,password);
		
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/AddminCusUserDetails.jsp");
		dispatcher.forward(request,response);
	}

}
