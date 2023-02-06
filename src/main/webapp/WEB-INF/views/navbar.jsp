<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>

<link rel='stylesheet'
href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
</head>
<style>
navbar {
position: fixed;
}

.navbar-nav {
margin-left: auto;

}

.sidebar{

	width: 18%;
	background: black;
	height: 100%;
	position: fixed;
	padding-top: 45px;
	z-index: 9999999999999999999999999;
}

.sidebar a{
	display: block;
	width: 100%;
	padding:10px 25px;
	text-decoration: none;
	color: white;

}

.header{

   left: 0;
   width: 100%;
   background-color:#ccc;
    height: 50px;
   text-color: black;
   text-align: left;
   position : fixed;
   margin-left: 240px;
   margin-top: 10px;
   margin-right: 50px;
}


.footer{
position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color:#ccc;
   color:black;
   text-align: center;

}


</style>

<body>
<nav class="navbar navbar-expand-lg " style="background-color: black">
<div class="container-fluid">
<div  style='font-size: 30px; color: white'>
	<h3>Laundry Management System     <i class="fas fa-sharp fa-solid fa-bars"></i></h3>
	
</div>	





<div class="" align="right">
<a class="navbar-bar p-9" href=""> <i
class='fas fa-user-circle mr-12' style='font-size: 30px; color: white'></i>${name }</a>

</div>
</div>


</nav>

<div class="sidebar">
    	
    	
    	<a href="/dashboard" class="item inactive"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-speedometer2" viewBox="0 0 16 16">
  <path d="M8 4a.5.5 0 0 1 .5.5V6a.5.5 0 0 1-1 0V4.5A.5.5 0 0 1 8 4zM3.732 5.732a.5.5 0 0 1 .707 0l.915.914a.5.5 0 1 1-.708.708l-.914-.915a.5.5 0 0 1 0-.707zM2 10a.5.5 0 0 1 .5-.5h1.586a.5.5 0 0 1 0 1H2.5A.5.5 0 0 1 2 10zm9.5 0a.5.5 0 0 1 .5-.5h1.5a.5.5 0 0 1 0 1H12a.5.5 0 0 1-.5-.5zm.754-4.246a.389.389 0 0 0-.527-.02L7.547 9.31a.91.91 0 1 0 1.302 1.258l3.434-4.297a.389.389 0 0 0-.029-.518z"/>
  <path fill-rule="evenodd" d="M0 10a8 8 0 1 1 15.547 2.661c-.442 1.253-1.845 1.602-2.932 1.25C11.309 13.488 9.475 13 8 13c-1.474 0-3.31.488-4.615.911-1.087.352-2.49.003-2.932-1.25A7.988 7.988 0 0 1 0 10zm8-7a7 7 0 0 0-6.603 9.329c.203.575.923.876 1.68.63C4.397 12.533 6.358 12 8 12s3.604.532 4.923.96c.757.245 1.477-.056 1.68-.631A7 7 0 0 0 8 3z"/>
</svg>Dashboard</a>
    	<a id="home-link" href="/lundry" class="item active"><i class="fas fa-solid fa-folder"></i> Laundry Request &nbsp; &nbsp; ></a>
    	<a id="contacts-link" href="/request" class="item"><i class="fas fa-solid fa-folder"></i> Request Status &nbsp; &nbsp;&nbsp; &nbsp;  ></a>
    	
    
</div> 

<div class="header">
	<h4>Dashboard / Overview</h4>

</div>

 <div class="footer">
          <p>All Right Reserved @ Laundry Management System</p>
      </div>
</body>
</html>