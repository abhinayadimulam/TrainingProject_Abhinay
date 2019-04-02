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
			<div class="col-md-offset-1 col-md-4">
				<img src="images/logo.png" alt="TA-logo" />
			</div>
			<!-- START OF ROW 2 COLUMN 2 -->
			<div class="col-md-6">
				<ul class="nav navbar-nav">
					<select><li class="active"><a href="#"><option>ELECTRONICS</option></a></li></select>
					<select><li><a href="#"><option>MEN</option></a></li></select>
					<select><li><a href="#"><option>WOMEN</option></a></li></select>
					<select><li><a href="#"><option>BABY &
									KIDS</option></a></li></select>
					<select><li><a href="#"><option>HOME &
									FURNITURE</option></a></li></select>
				</ul>
			</div>
		</div>

		<!-- 2 ROW END -->
		<!-- 3 ROW START -->
		<div class="row row3">

			<!-- START OF ROW 3 COLUMN 1 -->
			<div class="col-md-offset-1 col-md-4">
				<h3>
					<strong><a href="#">SIGN IN </a> / <a href="#">SIGN UP</a></strong>
				</h3>
			</div>

			<!-- START OF ROW 2 COLUMN 2 -->
			<div class="col-md-3"></div>

			<!-- START OF ROW 2 COLUMN 3 -->
			<div class="col-md-3 topmar">
				<h4>
					<a href="#">HOME</a> / <a href="#">NEW ACCOUNT</a>/ <a href="#">SIGN IN</a>
				</h4>
			</div>

		</div>

		<!-- 3 ROW END -->
		<!-- 4 ROW START -->

		    <div class="row" style="align-content:center; height:400px">
		    	<div class="col-md-5" style="width:200px">
		    	</div>
		    	<div class="col-md-5" >
			    		<h2><b>NEW ACCOUNT</b></h2>
						<h4>Not our registered customer yet?</h4>
						<p><b>With registration with us new world of fashion,fantastic discounts and much more opens to you! The whole process will not take you more than a minute!</b></p>
						<p>If you have any questions, please feel free to contact us, out customer service center is working for you 24/7.
						<form action="signin" method="post">
						  Name<br>
						  <label for="name"></label> <input type="text"
								class="form-control" name="f1"
								placeholder="Enter name">
						  <br>
						  Email<br>
						  <label for="email"></label> <input type="text"
								class="form-control" name="f2"
								placeholder="Enter valid email">
						  <br>
						  Password<br>
						  <label for="passworde"></label> <input type="password"
								class="form-control" name="f3"
								placeholder="Enter password">
						  <br><br>
						  <input style="align-items: center;" type="submit" value="register">
						</form>
						<%
						String stat=(String)request.getAttribute("status");
						if(stat != null){
							if(stat.equals("Yes")){
								%>
								<div class="alert alert-success" role="alert">Registration Success</div><br><br>
								<%
							}
							else if(stat.equals("No")){
								%>
								<div class="alert alert-danger" role="alert">Registration Failed</div><br><br>
								<%
							}
						}
						%>
								 
				</div>
				
				
				<br><br>
				<div class="col-md-5">
						<h2><b>SIGN IN</b></h2>
						<h4>Already our customer?</h4>
						<p><b>Get access to your Orders, Wishlist and Recommendations</b>
						<form action="login" method="post">
							  Email<br>
							  <label for="email"></label> <input type="text"
								class="form-control"  name="email"
								placeholder="Enter email"> 
							  <br>
							  Password<br>
							  <label for="password"></label> <input type="password"
								class="form-control"  name="password"
								placeholder="Enter password"> 
							  <br><br>
							  <input style="align-items: center;" type="submit" value="Login ">
						</form>
						   <%
						String sta=(String)request.getAttribute("stat");
						if(sta != null){
							if(sta.equals("Yes")){
								%>
								<div class="alert alert-success" role="alert">Registration Success</div><br><br>
								<%
							}
							else if(sta.equals("No")){
								%>
								<div class="alert alert-danger" role="alert">Invalid Access</div><br><br>
								<%
							}
						}
						%>
				</div>
						
				
		    </div>
		    
		    <br><br><br>
		 
</div>
	<!-- 5 ROW START -->
	<div class="row row6">
		<br> <br>
		<div class="col-md-1"></div>
		<div class="col-md-3 col1">
			<p>
			<h5>
				<strong>ABOUT US</strong>
			</h5>
			</p>
			<h6>Prellentesque habitant morbi tristique senectus et netus et
				malesuada fames ac turpls egestas.</h6>
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
		<div class="col-md-3 col2">
			<h5>
				<strong>BLOG</strong>
			</h5>
			<img src="images/detailsquare1.jpg">
			<h6>
				<strong> BLOG POST NAME</strong>
			</h6>
			<br /> <br /> <img src="images/detailsquare1.jpg">
			<h6>
				<strong> BLOG POST NAME</strong>
			</h6>
			<br /> <br /> <img src="images/detailsquare1.jpg">
			<h6>
				<strong> VERY VERY LONG BLOG POST NAME</strong>
			</h6>
			<br /></br>
		</div>
		<div class="col-md-2">
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
		<div class="col-md-2" align="left">
			<br /> <br> <img src="images/detailsquare1.jpg"> <img
				src="images/detailsquare2.jpg"> <img
				src="images/detailsquare3.jpg"><br /> <br /> <img
				src="images/detailsquare1.jpg"> <img
				src="images/detailsquare3.jpg"> <img
				src="images/detailsquare2.jpg">
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