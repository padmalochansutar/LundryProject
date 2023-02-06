<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="https://cdnjs.datatables/1.12.1/css/dataTables.bootstrap4.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script> 
<script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap4.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">

<%@ include file="navbar.jsp" %>
</head>
<style>
.laundry{
margin-left: 260px;
margin-top: 80px;
}
</style>
<body>

<div class="laundry">
<form action="./lundryPostRequest" method="post">
<div class="row">
<div class="form-group col-md-6">
<input type="Date" name="date" id="date" class="form-control" placeholder="Pick up/Drop Date">
</div>
<div class="form-group col-md-6">
<input type="text" name="topWear" id="topWear" class="form-control" placeholder="Topwear(Tshirt,Top,Shirt)">
</div>
</div>
 
<div class="form-group">
<input type="text" name="bottomWear" id="bottomWear" class="form-control" placeholder="Bottomwear(Lower,Jeans,Leggins)">
</div>
<div class="form-group ">
<input type="text" name="wollenColth" id="wollenColth" class="form-control" placeholder="Woolen Cloth">
</div>

<div class="form-group">
<select class="form-control" name="serviceType">
<option value="0" >Select Service Type</option>
<option value="online">Online</option>
<option value="cashpayment">Cash Payment</option>
</select>
</div>
<div class="form-group ">
<input type="text" name="contact" id="contact" class="form-control" placeholder="Contact Person">
</div>
<div class="form-group">
<input type="text" name="description" id="description" class="form-control" placeholder="Description(if any)">
</div>

<div class="form-group">
<input type="submit" value="submit" class="btn btn-primary form-control">
</div>
</form>
</div>
</body>
</html>