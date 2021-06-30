package com.mycompany.inventry_management;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateInventryServlet")
public class updateInventryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id=request.getParameter("itemid");
		String name=request.getParameter("name");
		String expdate=request.getParameter("expdate");
		String catagory=request.getParameter("catagory");
		String quntity=request.getParameter("quntity");
		String unitPrice=request.getParameter("unitPrice");
		String reciveDate=request.getParameter("reciveDate");
		String action=request.getParameter("action");
		
		boolean isTrue;
		
		isTrue=inventrydbutil.updateinventry(id, name, expdate,catagory, quntity, unitPrice, reciveDate, action);
		
		if(isTrue==true) {
			
			List<Inventry> itemDetails=inventrydbutil.getInventryDetails(id);
			request.setAttribute("itemDetails",itemDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("inventryaccount.jsp");
			dis.forward(request,response);
		}
		else {
			List<Inventry> itemDetails=inventrydbutil.getInventryDetails(id);
			request.setAttribute("itemDetails",itemDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("inventryaccount.jsp");
			dis.forward(request,response);
		}
	}

}
