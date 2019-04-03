
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE-edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ExceptionPage</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/custom.css">
</head>
<body>
	<div class="container-fluid">
		<!-- 1 ROW START -->
		<div class="row row1">
			<!-- START OF ROW 1 COLUMN 1 -->
			<div class="col-md-offset-1 col-md-7 ">
				<p>Contact Us on +91 40 66217777</p>
			</div>
			<!-- START OF ROW 1 COLUMN 2 -->
			<div class="col-md-4 header">
				<a href="#"><span class="glyphicon glyphicon-log-in"></span>SIGN
					IN</a> <a href="#"><span class="glyphicon glyphicon-user"></span>SIGN
					UP</a> <a href="#" class="btn btn-block btn-facebook"><span
					class="fa fa-facebook"></span></a> <a href="#"
					class="btn btn-block btn-google-plus header"><span
					class="fa fa-google-plus"></span></a> <a href="#"
					class="btn btn-block btn-twitter"><span class="fa fa-twitter"></span></a>
				<a href="#" class="btn btn-block btn-envelope"><span
					class="fa fa-envelope"></span></a>
			</div>
		</div>
		<!-- 1 ROW END -->
		<!-- 2 ROW START -->
		<div class="row row2">

			<!-- START OF ROW 2 COLUMN 1 -->
			<div class="col-md-offset-1 col-md-4"style="margin-top: 15px">
				<img src="images/logo.png" alt="TA-logo" />
			</div>
			<!-- START OF ROW 2 COLUMN 2 -->
			<div class="col-md-6">
				<ul class="nav navbar-nav navbar-right">

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">ELECTRONICS <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Page 1-1</a></li>
							<li><a href="#">Page 1-2</a></li>
							<li><a href="#">Page 1-3</a></li>
						</ul></li>

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">MEN <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Page 2-1</a></li>
							<li><a href="#">Page 2-2</a></li>
							<li><a href="#">Page 2-3</a></li>
						</ul></li>

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">WOMEN <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Page 3-1</a></li>
							<li><a href="#">Page 3-2</a></li>
							<li><a href="#">Page 3-3</a></li>
						</ul></li>

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">BABY &amp; KIDS <span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Page 4-1</a></li>
							<li><a href="#">Page 4-2</a></li>
							<li><a href="#">Page 4-3</a></li>
						</ul></li>

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">HOME &amp; FURNITURE <span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Page 5-1</a></li>
							<li><a href="#">Page 5-2</a></li>
							<li><a href="#">Page 5-3</a></li>
						</ul></li>
				</ul>

			</div>
		</div>

		<!-- 2 ROW END -->
		<!-- 3 ROW START -->
		<div class="row row3">

			<!-- START OF ROW 3 COLUMN 1 -->
			<div class="col-md-offset-1 col-md-4">
				<h3>
					<strong><a href="#">Exception Page</a></strong>
				</h3>
			</div>

			<!-- START OF ROW 2 COLUMN 2 -->
			<div class="col-md-3"></div>

			<!-- START OF ROW 2 COLUMN 3 -->
			<div class="col-md-3 topmar">
				<h4>
					<a href="#">HOME</a> / <a href="#">New Exception Page</a>
				</h4>
			</div>

		</div>
		<br><br><br>
		

		<!-- 3 ROW END -->
		<!-- 4 ROW START -->
		<div class="container">
			<hr>
			<h3 align="center"><strong>
				Sorry for the Inconvenience - The Page you are looking for have a Technical Error.
			</strong>	
			</h3>
			<h4 class="excep" align="center"><strong>Kindly proceed to the Home Page or Report this issue to Website Administrator with the Description mentioned below:</strong></h4>
			<br>
			<p align="center">
       			<a href="index.jsp" class="btn btn-info">
         			<span class="glyphicon glyphicon-home"></span> Home
      			</a>
      			<a href="reportbug" class="btn btn-info">
         			<span class="fa fa-bug"></span> Report
      			</a>
      		</p>
      		<div class="alert alert-danger text-left">
						<%@ page isErrorPage="true" import="java.io.*" %>
						<%
							StringWriter errors = new StringWriter();
		    				exception.printStackTrace(new PrintWriter(errors));
		    				session.setAttribute("SESS", errors.toString());
							out.print(errors.toString());
						 %>
			</div>
				
				<br/>
								
				<hr/>
      		
     		
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