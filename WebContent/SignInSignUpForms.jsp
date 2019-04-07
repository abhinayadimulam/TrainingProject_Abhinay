<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE-edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>SignInSignUpForms</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<link rel="stylesheet" href="css/custom.css">
</head>
<body>
	<div class="container-fluid">
		<!-- 1 ROW START -->
		<%@ include file="NavigationBar1.jsp"%>
	</div>
	<!-- 1 ROW END -->
	<!-- 2 ROW START -->
	<%@ include file="NavigationBar2.jsp"%>
	<!-- 2 ROW END -->


	<!-- 2 ROW END -->
	<!-- 3 ROW START -->
	<div class="row row3">

		<!-- START OF ROW 3 COLUMN 1 -->
		<div class="col-md-offset-1 col-md-4">
			<h3>
				<strong><a href="SignInSignUpForms.jsp">SIGN IN </a> / <a href="SignInSignUpForms.jsp">SIGN UP</a></strong>
			</h3>
		</div>

		<!-- START OF ROW 2 COLUMN 2 -->
		<div class="col-md-3"></div>

		<!-- START OF ROW 2 COLUMN 3 -->
		<div class="col-md-3 topmar">
			<h4>
				<a href="index.jsp">HOME</a> / <a href="#">NEW ACCOUNT</a>/ <a href="SignInSignUpForms.jsp">SIGN
					IN</a>
			</h4>
		</div>

	</div>

	<!-- 3 ROW END -->
	<!-- 4 ROW START -->

	<div class="row">

		<div class="col-md-offset-1 col-md-5">
			<h2>
				<b>NEW ACCOUNT</b>
			</h2>
			<h4>Not our registered customer yet?</h4>
			<p>
				<b>With registration with us new world of fashion,fantastic
					discounts and much more opens to you! The whole process will not
					take you more than a minute!</b>
			</p>
			<p>If you have any questions, please feel free to contact us, out
				customer service center is working for you 24/7.
			<form action="signin" method="post">
				Name<br> <label for="name"></label> <input type="text"
					class="form-control" name="f1" placeholder="Enter name"> <br>
				Email<br> <label for="email"></label> <input type="text"
					class="form-control" name="f2" placeholder="Enter valid email">
				<br> Password<br> <label for="passworde"></label> <input
					type="password" class="form-control" name="f3"
					placeholder="Enter password"> <br> <br> <input
					style="align-items: center;" type="submit" value="register">
			</form>
			<%
					String stat = (String) request.getAttribute("status");
					if (stat != null) {
						if (stat.equals("Yes")) {
				%>
			<div class="alert alert-success" role="alert">Registration
				Success</div>
			<br> <br>
			<%
					} else if (stat.equals("No")) {
				%>
			<div class="alert alert-danger" role="alert">Registration
				Failed</div>
			<br> <br>
			<%
					}
					}
				%>

		</div>


		<br> <br>
		<div class="col-md-5">
			<h2>
				<b>SIGN IN</b>
			</h2>
			<h4>Already our customer?</h4>
			<p>
				<b>Get access to your Orders, Wishlist and Recommendations</b>
			<form action="login" method="post">
				Email<br> <label for="email"></label> <input type="text"
					class="form-control" name="email" placeholder="Enter email">
				<br> Password<br> <label for="password"></label> <input
					type="password" class="form-control" name="password"
					placeholder="Enter password"> <br> <br> <input
					style="align-items: center;" type="submit" value="Login ">
			</form>
			<%
					String sta = (String) request.getAttribute("stat");
					if (sta != null) {
						if (sta.equals("Yes")) {
				%>
			<div class="alert alert-success" role="alert">Registration
				Success</div>
			<br> <br>
			<%
					} else if (sta.equals("No")) {
				%>
			<div class="alert alert-danger" role="alert">Invalid Access</div>
			<br> <br>
			<%
					}
					}
				%>
		</div>


	</div>

	<br>
	<br>
	<br>


	<!-- 5 ROW START -->
	<%@ include file="Footer1.jsp"%>

	<!-- 5 ROW END -->
	<!-- 6 ROW START -->
	<%@ include file="Footer2.jsp"%>
</body>
</html>