<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
<style>
.box1{
	height: 170px;
	width: 240px;
	background-color: yellow;
	margin-left: 260px;
	margin-top: 80px;
	
}

.box2{
	height: 170px;
	width: 240px;
	background-color: blue;
	margin-left: 10px;
	margin-top: 80px;
	
}

.box3{
	height: 170px;
	width: 240px;
	background-color: lightgreen;
	margin-left: 10px;
	margin-top: 80px;
	
}
.box4{
	height: 170px;
	width: 240px;
	background-color: red;
	margin-left: 10px;
	margin-top: 80px;
	
}
.divider{
	height: .5px;
	margin-top: 100px;
	width: 100%;
	background: #e2e2e2;
	
	
}
.laundrytable{
	margin-left: 270px;
	margin-top: 20px;
}

.boxdetailing{
	
}


</style>

</head>
<body>
<div>
<div class="row">
	<div class="box1">
	<div align="center">
	${box1 } New Request</div>
		<div class="divider">
			<input type="" value="View Details" class="btn">
		</div>
	</div>
	<div class="box2">
	<div align="center">
	${box2 } Accept!</div>
		<div class="divider">
			<input type="" value="View Details" class="btn">
		</div>
	</div>
	<div class="box3">
	<div align="center" class="boxdetailing">
	${box3 } Inprocess!</div>
		<div class="divider">
			<input type="" value="View Details" class="btn">
		</div>
	</div>
	<div class="box4">
	<div align="center">
	${box4 } Finish!</div>
		<div class="divider">
			<input type="" value="View Details" class="btn">
		</div>
	</div>
	<br>
	<!-- <h3 align="center" >Laundry Price(Per Unit)</h3> -->
	<div class="laundrytable" align="center" >
		<h3 align="center" >Laundry Price(Per Unit)</h3>
	<table class="table table-stripped" id="BookingTable" border="1">
				
				<tbody>


					<c:forEach items="${lundryList}" var="list"
						varStatus="count">
						<tr>
							<td>${list.lundryname}</td>
							<td>${list.lundryPrice}</td>
							
						
						</tr>
					</c:forEach>

				</tbody>
			</table>
	
	</div>
</div>
</div>
</body>
</html>