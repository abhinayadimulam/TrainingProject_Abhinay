
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE-edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Error</title>
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
		<!-- 3 ROW START -->
		<div class="row row3">

			<!-- START OF ROW 3 COLUMN 1 -->
			<div class="col-md-offset-1 col-md-4">
				<h3>
					<strong><a href="#">Error Page</a></strong>
				</h3>
			</div>

			<!-- START OF ROW 2 COLUMN 2 -->
			<div class="col-md-3"></div>

			<!-- START OF ROW 2 COLUMN 3 -->
			<div class="col-md-3 topmar">
				<h4>
					<a href="index.jsp">HOME</a> / <a href="#">Error Page</a>
				</h4>
			</div>

		</div>
		<br> <br> <br>


		<!-- 3 ROW END -->
		<!-- 4 ROW START -->
		<div class="container">
			<hr>
			<h3 align="center">
				<strong> Sorry for the Inconvenience - The Page you are
					looking for does not Exist. </strong>
			</h3>
			<h4 class="excep" align="center">
				<strong>Seems like either you have tried to write or modify
					the URL. Use onlu the Navigation Links provided on the Web Page.</strong>
			</h4>
			<br>
			<p align="center">
				<a href="index.jsp" class="btn btn-info"> <span
					class="glyphicon glyphicon-home"></span> Home
				</a>
			</p>


		</div>





		<!-- 5 ROW START -->
		<div class="row row6">
			<br> <br>
			<div class="col-md-1"></div>
			<div class="col-md-4 col1">
				<p>
				<h5>
					<strong>ABOUT US</strong>
				</h5>
				</p>
				<h6>TechAspect empowers small and medium-sized businesses to
					reach millions of customers with a number of programmes that help
					boost their revenue, reach and productivity. By telling stories
					from a wide range of perspectives, we tell the larger story of who
					TechAspect is and how TechAspect's core business practices
					contribute to better India.</h6>
				<hr />
				<h5>
					<b>JOIN OUR MONTHLY NEWSLETTER</b>
				</h5>
				<div class="input-group">
					<input type="text" class="form-control"> <span
						class="input-group-addon"><span
						class="glyphicon glyphicon-send"></span></span>
				</div>

				<br /> <br />
			</div>
			<div class="col-md-4 col2">
				<h5>
					<strong>BLOG</strong>
				</h5>
				<h5>Learn more About hoe TechAspect is supporting small
					companies.</h5>
				<br>
				<h5>Customer Success</h5>
				<br /></br>
			</div>
			<div class="col-md-3">
				<h5>
					<strong>CONTACT</strong>
				</h5>
				<h6>TECHASPECT SOLUTIONS PVT.LTD</h6>
				<h6>PLOT NO.38, N HEIGHTS, 3RD FLOOR</h6>
				<h6>HITECH CITY PHASE 2, MADHAPUR</h6>
				<h6>HYDERABAD, TELANGANA-500081</h6>
				<h6>INDIA</h6>
				<button class="btn btn-info">GO TO CONTACT PAGE</button>
				<br /> <br /> <br />
			</div>

		</div>

		<!-- 5 ROW END -->
		<!-- 6 ROW START -->
		<div class="row row7">
			<p>
				<span class="glyphicon">&#xe194;</span> 2018. TechAspect Solutions
				Private Ltd.
			</p>
		</div>
		<script src="js/jquery-3.3.1.js"></script>
		<script src="bootstrap/js/bootstrap.js"></script>
		<!-- 6 ROW END -->
	</div>

</body>
</html>