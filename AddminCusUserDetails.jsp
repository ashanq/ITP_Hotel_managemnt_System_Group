<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@page import="com.admin.CustomerDButil"%>
    <%@page import="com.admin.customer" %>
    <%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	
	<style>
#table {
 font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 80%;
  margin-left:10%
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 2px;
}

tr:nth-child(even) {
  background-color: #d6d6c2;
}

table input[type="submit"]{
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 2px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  cursor: pointer; 
    border: none;
    outline: none;
    height: 35px; 
}



table input[type="submit"]:hover {
    border: none;
    outline: none;
    height: 35px;
    background: #ff6348;
    color: #fff;
    font-size: 20px;
    
    cursor: pointer;
    transition: .3s ease-out;
}

.container {
	margin-left:65%;
}


.container input[type="submit"]:hover {
    border: none;
    outline: none;
    height: 35px;
    background: #ff6348;
    color: #fff;
    font-size: 20px;
    
    cursor: pointer;
    transition: .3s ease-out;
}

.container input[type="submit"] {
   margin-left:20%;
   margin-bottom:1%;
   margin-top:1%;
   position: relative;
   
 
}

a:link, a:visited {
  background-color: white;
  color: black;
  border: 2px solid green;
  padding: 10px 20px;
 	text-align: center;
  text-decoration: none;
  display: inline-block;
  
}

a:hover, a:active {
  background-color: green;
  color: white;


.button2 {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 5px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  position: absolute;
  left: 60%;
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
}

table, th, td {
  border: 1px solid black;
}



	h1 {
  text-align: center;
  margin-left:50%;
}

</style>

<title>Customer List</title>


</head>
<% 
	CustomerDButil cusdb=new CustomerDButil();
	ArrayList<customer> users = new ArrayList<>();
	
	users=cusdb.selectAllUsers();
%>
<body>
<header>
<div>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<h2> User Management </h2>
			</div>

	</div>		
	</header>
	<br>
	
	<h1 align="center">Customers Details</h1>
	
	<div class="container">
	<form action="search" method="post" >
		Search Customer  <input type= "text" name="idcustomer" placeholder="CUSTOMER ID NO"><br>
	
		<input type="submit" name="submit" value="Search" class="btn btn-success">
	</form>
</div>
	
	<div>
	<table id="table">
	
				
					<tr>
						<th>ID</th>
						<th>fName</th>
						<th>lName</th>
						<th>Email</th>
						<th>PhoneNO</th>
						<th>NICno</th>
						<th>ADDRESS</th>
						<th>GENDER</th>
						<th>Actions</th>
					</tr>
					
					<% for(customer cus:users) {%>
						<tr>
							<td><%=cus.getidCustomer()%></td>
							<td><%=cus.getfname() %></td>
							<td><%=cus.getlname() %></td>
							<td><%=cus.getemail() %></td>
							<td><%=cus.getPhoneNo() %></td>
							<td><%=cus.getNICno() %></td>
							<td><%=cus.getAddress() %></td>
							<td><%=cus.getGender() %></td>
							<td>
							<form action ="UpdateCustomerServlet" method="post" >
								<input type="hidden" name="cid" value="<%=cus.getidCustomer()%>" >
								<input type="submit" value="Edit">
							</form><br>
							<form action="DeleteC" method="post">
							<input type="hidden" name="cid" value="<%=cus.getidCustomer()%>">
								<input type="submit" value="Delete">
							</form>
						</tr>
						
					<% } %>
				

			</table>

</div>
<a href ="printReport.jsp" ><p style="text-align:center"> Print Report</a>

</body>
</html>