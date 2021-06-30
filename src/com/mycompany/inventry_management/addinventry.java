package com.mycompany.inventry_management;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class addinventry
 */
@WebServlet("/addinventry")
public class addinventry extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		 	String itemid=request.getParameter("itemid");
	        String name=request.getParameter("name");
	        String expdate=request.getParameter("expdate");
	        String catagory=request.getParameter("catagory");
	        String quntity=request.getParameter("quntity");
	        String unitPrice=request.getParameter("unitPrice");
	        String reciveDate=request.getParameter("reciveDate");
	        String action=request.getParameter("action");
	        
	        boolean isTrue;
	        isTrue=inventrydbutil.addinventry(itemid, name, expdate, catagory, quntity, unitPrice, reciveDate, action);
	        
	        if(isTrue==true){
	        RequestDispatcher dis = request.getRequestDispatcher("Sucessz.jsp");
	        dis.forward(request,response);
	        }
	        else{
	         RequestDispatcher dis2 = request.getRequestDispatcher("inventrysucess.jsp");
	        dis2.forward(request,response);
	        }
	       
	    }
	

	    

	}