<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.admin.customer" %>
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
  width: 50%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 5px;
  
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
 table-layout: auto;
  
}

	h1 {
  margin-top: 2%;
  
  
  
  }
  .container1 input[type="submit"]:hover {
    border: none;
    outline: none;
    height: 35px;
    background: #ff6348;
    color: #fff;
    font-size: 20px;
    
    cursor: pointer;
    transition: .3s ease-out;
}

.container1 input[type="submit"] {
   margin-left:44%;
   margin-bottom:1%;
   margin-top:1%;
   position: relative;
   
 
}
  
  .container1 input[type="text"] {
   
      
    border: 2px;
    outline: 1px;
    height: 35px;
    border-color:black;
    font-size: 20px;
  
   
   
   position: relative;
   
 
}
  
}

</style>
	
	
	
	
	<title>Update Details</title>
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
	
        
        


	<%customer customer =(customer)request.getAttribute("customer");
	
	
	
	
	
	
	//String idCustomer = request.getParameter("idCustomer");
		//String fname = request.getParameter("fname");
		//String lname = request.getParameter("lname");
		//String email = request.getParameter("email");
		//String phoneNo = request.getParameter("phoneNo");
		//String NICno = request.getParameter("NICno");
		//String address = request.getParameter("address");
		//String gender = request.getParameter("gender");
		//String username = request.getParameter("username");
		//String password = request.getParameter("password");
	%>
	
	<div class="container1">
		
		<h1 align="center" margin-top="2%">Edit Details</h1>
		
	
	<form action="UpdateC" method="post" onsubmit="return checkDetails()" >
	
		
	
	
	<table id="table2">
		<tr>
			<td>Customer ID</td>
			<td><input type="text" name="idCustomer" value="<%=customer.getidCustomer() %>" readonly></td>
		</tr>
		<tr>
			<td>First Name</td>
			<td><input type="text" name="fname" value="<%= customer.getfname()%>"></td>
		</tr>
		<tr>
			<td>Last Name</td>
			<td><input type="text" name="lname" value="<%=customer.getlname()%>"></td>
		</tr>
		<tr>
		<td>Email</td>
		<td><input type="text" name="email" value="<%= customer.getemail()%>"></td>
	</tr>
	<tr>
		<td>Phone number</td>
		<td><input type="text" name="phoneNo" value="<%= customer.getPhoneNo()%>" id="phone"></td>
	</tr>
	<tr>
			<td>NIC Number</td>
			<td><input type="text" name="NICno" value="<%= customer.getNICno()%>" id="nic"></td>
		</tr>
	<tr>
			<td>Address</td>
			<td><input type="text" name="address" value="<%=customer.getAddress() %>"></td>
		</tr>	
		<tr>
			<td>Gender</td>
			<td><input type="text" name="gender" value="<%=customer.getGender() %>"></td>
		</tr>
	<tr>
		<td>User name</td>
		<td><input type="text" name="username" value="<%=customer.getUsername()%>"></td>
	</tr>
	</table>
	<br>
	<input type="submit" name="submit" value="Update My Data">
	</form>

</div>
</div>

</body>





<script type="text/javascript">

function checkDetails() {
    var pass1 =document.getElementById("pass1").value;
    var pass2 =document.getElementById("pass2").value;

    if (pass1.length<6){
        {
           
            alert("Your Password Must Contain At Least 6 Characters!");
            return false;
        };
        
    }else if (pass1 != pass2){
        {
            title: "Error",
            alert("Your Password & Confirm Password Are not Match!");
        return false;
        }
        
    }
    return confirmNic();
}

function confirmNic() {

    var nic = document.getElementById("nic").value;

    re = /[0-9]{9}[V]$/;
    if(!re.test(nic)) {
    	{
           
            alert( "Your Entered Wrong NIC Number !");
    	return false;
        }
}
    return checkPhone();
}

function checkPhone() {

    var reg = document.getElementById("phone").value;

    re = /[0-9]{10}$/;

    if(!re.test(reg)) {
    	{
            
            alert("Your Entered Wrong Phone Number !");
        };
        return false;
    }

    return true;

}






</script>

</html>