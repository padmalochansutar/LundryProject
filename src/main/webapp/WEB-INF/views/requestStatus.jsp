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

.setter{
margin-top: 80px;
}
</style>
<body>
<div class="setter" align="center">
					<c:forEach items="${DataList}" var="list"
						varStatus="count">
						<h3>User Name:${list.register.name }</h3>
						<h3>Email:${list.register.email }</h3>
						<h3>Mobile No:${list.register.mobileNo }</h3>
						<h3>Date:${list.date }</h3>
						<h3>Status:${list.status }</h3>
					</c:forEach>

	</div>			
			
	
</body>
</html>