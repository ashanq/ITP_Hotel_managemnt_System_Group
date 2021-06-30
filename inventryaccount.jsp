<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
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
				<a href="inventryaccount.jsp" class="navbar-brand"> Inventory Management </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="InventryManagemnt.jsp"
					class="nav-link">Inventrory Panle</a></li>
			</ul>
			<ul class="navbar-nav">
				<li><a href="addinventry.jsp"
					class="nav-link">Add New Item</a></li>
			</ul>
		</nav>
	</header>
	<br>
<form action="search" method="post">
	Item Code <input type="text" name="sid" placeholder="Item Code"><br>
 <button type="submit" name="submit" class="btn btn-success">Search</button>


</form>
	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Inventories</h3>
			<hr>
			<div class="container text-left">

			</div>
			<br>
<table>
<c:forEach var="item" items="${itemDetails}">

<c:set var="id" value="${item.sid}"/>
<c:set var="name" value="${item.name}"/>
<c:set var="expdate" value="${item.expdate}"/>
<c:set var="catagory" value="${item.catagory}"/>
<c:set var="quntity" value="${item.quntity}"/>
<c:set var="unitPrice" value="${item.unitPrice}"/>
<c:set var="reciveDate" value="${item.reciveDate}"/>
<c:set var="action" value="${item.action}"/>

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
					<c:forEach var="user" items="${itemDetails}">

						<tr>
							<td><c:out value="${item.sid}" /></td>
							<td><c:out value="${item.name}" /></td>
							<td><c:out value="${item.expdate}" /></td>
							<td><c:out value="${item.catagory}" /></td>
							<td><c:out value="${item.quntity}" /></td>
							<td><c:out value="${item.unitPrice}" /></td>
							<td><c:out value="${item.reciveDate}" /></td>
							<td><c:out value="${item.action}" /></td>
						</tr>
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>

</c:forEach>
</table>

<c:url value="updateinventry.jsp" var="itemupdate">
	<c:param name="id" value="${id}"/>
	<c:param name="name" value="${name}"/>
	<c:param name="expdate" value="${expdate}"/>
	<c:param name="catagory" value="${catagory}"/>
	<c:param name="quntity" value="${quntity}"/>
	<c:param name="unitPrice" value="${unitPrice}"/>
	<c:param name="reciveDate" value="${reciveDate}"/>
	<c:param name="action" value="${action}"/>
</c:url>



<br>
<c:url value="deleteinventry.jsp" var="itemdelete">
	<c:param name="id" value="${id}"/>
	<c:param name="name" value="${name}"/>
	<c:param name="expdate" value="${expdate}"/>
	<c:param name="catagory" value="${catagory}"/>
	<c:param name="quntity" value="${quntity}"/>
	<c:param name="unitPrice" value="${unitPrice}"/>
	<c:param name="reciveDate" value="${reciveDate}"/>
	<c:param name="action" value="${action}"/>

</c:url>
<a href="${itemupdate}" class="btn btn-success">Update Item</a>   <a href="${itemdelete}" class="btn btn-success">Delete Item</a>
	</div>
</body>
</html>