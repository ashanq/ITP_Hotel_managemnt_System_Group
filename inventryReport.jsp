<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inventry List</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.3/html2pdf.bundle.min.js"></script> 
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
				<a href="inventryaccount.jsp" class="navbar-brand"> Inventory Management </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="InventryManagemnt.jsp"
					class="nav-link">Update And Delete</a></li>
			</ul>
			<ul class="navbar-nav">
				<li><a href="addinventry.jsp"
					class="nav-link">Add New Item</a></li>
			</ul>
			<ul class="navbar-nav">
			<li><a onclick="print()"class="nav-link">Download Report</a></li>	
			</ul>
		</nav>
	</header>
	<br>
</form>
	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
		<div id="list">
			<h3 class="text-center">Inventories Item Report</h3>
			<p>Date&time:<%=new Date().toString() %></p>
			<div class="container text-left">

			</div>
			<br>
<table>

		
		<table class="table table-bordered">
				<thead>
					<tr>
						<th>Item Code</th>
						<th>Item Name</th>
						<th>Exp Date</th>
						<th>Catogary</th>
						<th>Quntity</th>
						<th>Unit Price</th>
						<th>Recive Date</th>
						<th>Action</th>
					</tr>
				</thead>
	<tbody>
					<!--   for (Todo todo: todos) {  -->

						<tr>
						<c:forEach var="inventory" items="${myIn}">
							<td><c:out value="${inventory.sid}" /></td>
							<td><c:out value="${inventory.name}" /></td>
							<td><c:out value="${inventory.expdate}" /></td>
							<td><c:out value="${inventory.catagory}" /></td>
							<td><c:out value="${inventory.quntity}" /></td>
							<td><c:out value="${inventory.unitPrice}" /></td>
							<td><c:out value="${inventory.reciveDate}" /></td>
							<td><c:out value="${inventory.action}" /></td>
						</tr>
					</c:forEach>

					<!-- } -->
				</tbody>

			</table>
</div>
</div>
	</div>
	
<script>

function print(){
	

			var element = document.getElementById("list");
			var opt = {
			  margin:       1,
			  filename:     'Inventrylist.pdf',
			  image:        { type: 'jpeg', quality: 0.98 },
			  html2canvas:  { scale: 2 },
			  jsPDF:        { unit: 'in', format: 'letter', orientation: 'portrait' }
			};
			 
			// New Promise-based usage:
			html2pdf().from(element).set(opt).save();


</script>			
</body>
</html>