<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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

		</nav>
	</header>
    <br>
    <div class="container col-md-5">
		<div class="card">
			<div class="card-body">
        <form action="insert" method="post">
        <caption>
					<h2>
            			Add New Inventory
					</h2>
				</caption>
		
        Item Code <input type="text" name="itemid" placeholder="Enter Item Code"required="required"><br><br>
        Item Name <input type="text" name="name"placeholder="Enter Item Name"required="required"><br><br>
        Exp Date <input type="date" name="expdate" placeholder="XXXX-XX-XX"><br><br>
         <label for="catogary"placeholder="Enter Item Catogary">Catogary</label>
 	 <select name="catagory" id="catagory">
    	<option value="Food">Food</option>
    	<option value="Office Item">Office Item</option>
    	<option value="Drinks">Drinks</option>
    	<option value="Room Item">Room Item</option>
    	<option value="Event Item">Event Item</option>
    	<option value="Furniture">Furniture</option>
    	<option value="Accsossories">Accsossories</option>
  	</select>
	<br><br>
        Quntity <input type="text" name="quntity" placeholder="Enter Item Quntity"required="required"><br><br>
        Unit Price <input type="text" name="unitPrice" placeholder="LKR:"required="required"><br><br>
      Recive Date <input type="date" name="reciveDate" placeholder="XXXX-XX-XX"required="required"><br><br>
	<label for="action"placeholder="Enter Item Catogary">Action</label>
 	 <select name="action" id="action">
    	<option value="Yes">Yes</option>
    	<option value="No">No</option>
  	</select><br><br>
        
        <button type="submit" name="submit" class="btn btn-success">Add Item</button>  
        <a href="InventryManagemnt.jsp" class="btn btn-success">Back To List</a>
        
        </form>
        
        
        </div>
		</div>
	</div>
        
    </body>
</html> 