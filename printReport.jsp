<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@page import="com.admin.CustomerDButil"%>
    <%@page import="com.admin.customer" %>
    <%@page import="java.util.ArrayList" %>
    <%@page import="java.util.Date" %>
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
  width: 50%;
  margin-left:20%;
}

	h2 {
  text-align: center;
}
button{
margin-top:3%;
margin-left:43%;

  border: none;
    outline: none;
    height: 35px;
    background: #ff6348;
    color: #fff;
    font-size: 20px;
    
    cursor: pointer;
    transition: .3s ease-out;

}


button{
}
</style>



<title>Customer List</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.3/html2pdf.bundle.min.js" referrerpolicy="no-referrer"></script>


</head>
<% 
	CustomerDButil cusdb=new CustomerDButil();
	ArrayList<customer> users = new ArrayList<>();
	
	users=cusdb.selectAllUsers();
%>
<body>

<div id="list">
	<h1 align="center">Customers Details</h1>
	<p style = "width:50%; margin : 0% 25%;">DATE & Time :<%=new Date().toString() %></p>
	
	
	<table>
	
				
					<tr>
						<th>ID</th>
						<th>fName</th>
						<th>lName</th>
						<th>Email</th>
						<th>PhoneNO</th>
						<th>NICno</th>
						<th>ADDRESS</th>
						<th>GENDER</th>
						
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
							
						</tr>
						
					<% } %>
				

			</table>
</div>

<button onclick="print()">Download Report</button>

<script>

function print(){
	
	var element = document.getElementById("list");
	var opt = {
	  margin:       1,
	  filename:     'Customer Details.pdf',
	  image:        { type: 'jpeg', quality: 0.98 },
	  html2canvas:  { scale: 5 },
	  jsPDF:        { unit: 'in', format: 'letter', orientation: 'portrait' }
	  width:2,
	  
	};
	 
	// New Promise-based usage:
	html2pdf().from(element).set(opt).save();
	 
	
}

</script>

</body>
</html>