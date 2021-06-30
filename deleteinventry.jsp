<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
        <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="addinventry.jsp" class="navbar-brand"> Inventory Management </a>
			</div>
			<ul class="navbar-nav">
				<li><a href="inventryaccount.jsp"
					class="nav-link">Search Item</a></li>
			</ul>

		</nav>
	</header>
    <br>
    <div class="container col-md-5">
		<div class="card">
			<div class="card-body">
			<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">Item Delete</h3>
			<hr>
			
			
			<br>
			
<%
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String expdate=request.getParameter("expdate");
	String catagory=request.getParameter("catagory");
	String quntity=request.getParameter("quntity");	
	String unitPrice=request.getParameter("unitPrice");
	String reciveDate=request.getParameter("reciveDate");
	String action=request.getParameter("action");
%>

<form action="delete" method="post">
<table>
<tr>
<td>Item Code</td>
<td><input type="text" name="itemid" value="<%=id%>" readonly></td>
</tr>
<tr>
<td>Item Name</td>
<td><input type="text" name="name" value="<%=name%>" readonly></td>
</tr>
<tr>
<td>Exp Date</td>
<td><input type="text" name="a" value="<%=expdate%>" readonly></td>
</tr>
<tr>
<td>Catogary</td>
<td><input type="text" name="b" value="<%=catagory%>" readonly></td>
</tr>
<tr>
<td>Quntity</td>
<td><input type="text" name="c" value="<%=quntity%>" readonly></td>
</tr>
<tr>
<td>Unit Price</td>
<td><input type="text" name="z" value="<%=unitPrice%>" readonly></td>
</tr>
<tr>
<td>Recive Date</td>
<td><input type="text" name="x" value="<%=reciveDate%>" readonly></td>
</tr>
<tr>
<td>Action</td>
<td><input type="text" name="contact" value="<%=action%>" readonly></td>
</tr>
</table><br>
<button type="submit" name="submit" class="btn btn-success">Delete Details</button>   <a href="inventryaccount.jsp" class="btn btn-success">Back To List</a>


</form>


</body>
</html>