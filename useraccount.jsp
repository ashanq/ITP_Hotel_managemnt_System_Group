<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	
	
	<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	
	<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #d6d6c2;
}

.button {
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
   left: 40%;
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
}

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

table {
	
  width: 60%;
  margin-top:5%;
  margin-left:20%;
}

	h2 {
  text-align: center;
}

</style>
	
	
	
	
	
	<title>My Account</title>
	
	<link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        
        
        
       

</head>
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
        
        
        
        
  
        
        


<div class="container1">
		<div class="viewbox">
		<h1 align="center">Account Details</h1>
	<table id="table1">
	<c:forEach var="cus" items="${cusDetails}">
	
	<c:set var="id" value="${cus.idCustomer}"/>
	<c:set var="fname" value="${cus.fname}"/>
	<c:set var="lname" value="${cus.lname}"/>
	<c:set var="email" value="${cus.email}"/>
	<c:set var="phoneNo" value="${cus.phoneNo}"/>
	<c:set var="NICno" value="${cus.NICno}"/>
	<c:set var="address" value="${cus.address}"/>
	<c:set var="gender" value="${cus.gender}"/>
	<c:set var="username" value="${cus.username}"/>
	<c:set var="password" value="${cus.password}"/>
	
	
	
	</tr>
	
	<tr>
		<td>Customer ID</td>
		<td>${cus.idCustomer}</td>
		
	</tr>
	<tr>
		<td>Customer First Name</td>
		<td>${cus.fname}</td>
	</tr>
	<tr>
		<td>Customer Last Name</td>
		<td>${cus.lname}</td>
	</tr>
	<tr>
		<td>Customer Email</td>
		<td>${cus.email}</td>
	</tr>
	<tr>
		<td>Customer Phone</td>
		<td>${cus.phoneNo}</td>
	</tr>
	<tr>
		<td>Customer NIC No</td>
		<td>${cus.NICno}</td>
	</tr>
	<tr>
		<td>Customer Address</td>
		<td>${cus.address}</td>
	</tr>
	<tr>
		<td>Customer Gender</td>
		<td>${cus.gender}</td>
	</tr>
	<tr>
		<td>Customer User Name</td>
		<td>${cus.username}</td>
	</tr>

	</c:forEach>
	
	</table>
	
	
	
	
	
	
	</div>
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>




</html>