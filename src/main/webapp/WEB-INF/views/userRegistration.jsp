<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.min.css">


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

	<form action="./register" method="post">

		<div class="mask d-flex align-items-center h-100 gradient-custom-3">
			<div class="container h-100">
				<div
					class="row d-flex justify-content-center align-items-center h-100">
					<div class="col-12 col-md-9 col-lg-7 col-xl-6">
						<div class="card" style="border-radius: 15px;">
							<div class="card-body p-5">
								<h4 class="text-uppercase text-center mb-5" style="color: red">${msg }</h4>
								<h2 class="text-uppercase text-center mb-5">LMS||User
									Registration</h2>
								<hr>

								<div class="form-outline mb-4">
									<input type="text" name="name" id="name"
										class="form-control form-control-lg" placeholder="Full Name"
										required />
								</div>

								<div class="form-outline mb-4">
									<input type="email" name="email" id="email"
										class="form-control form-control-lg" placeholder="Email"
										required />
								</div>

								<div class="form-outline mb-4">
									<input type="text" name="mobileNo" id="mobileNo"
										class="form-control form-control-lg"
										placeholder="Mobile Number" required />
								</div>

								<div class="form-outline mb-4">
									<input type="password" name="password" id="password"
										class="form-control form-control-lg" placeholder="Password"
										required />
								</div>


								<div class="d-flex justify-content-center">
									<button type="submit"
										class="btn btn-primary btn-block btn-lg gradient-custom-4 text-body">Register</button>
								</div>
	
	<div align="center">

		<a href="/login" class="fw-bold text-body"><h6 style="color: blue">Login
				Page</h6></a>

	

		<a href="/forgot" class="fw-bold text-body"><h6
				style="color: blue">Forgot Password?</h6></a>
	</div>



	</div>
	</div>
	</div>
	</div>
	</div>
	</div>

</form>

</body>
</html>