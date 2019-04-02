<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE-edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>CustomerAccount</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
					class="btn btn-block btn-google-plus"><span
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
				<h3><strong>MY ACCOUNT</strong></h3>
			</div>

			<!-- START OF ROW 2 COLUMN 2 -->
			<div class="col-md-3"></div>

			<!-- START OF ROW 2 COLUMN 3 -->
			<div class="col-md-3 topmar">

				<h4>
					<a href="#">HOME </a> / <a href="#"> MY ACCOUNT </a>
				</h4>

			</div>

		</div>

		<!-- 3 ROW END -->
		<!-- 4 ROW START -->
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<br>
					<h4>Change your personal details or your password here.</h4>
					<br>
					<h6>Pellentesque habitant morbi tristique senectus et netus
						et malesuada fames ac turpis egestas.</h6>
					<br>
					<hr />
					<form class="container-fluid">
						<!-- Row-1 Start -->
						<div class="row">
							<h3>
								<strong>CHANGE PASSWORD</strong>
							</h3>
							<hr class="hrrule">
							<br> <br>
							
						</div>
						<!-- Row-1 End -->
						<!-- Row-2 Start -->
						<div class="row">
							<div class="col-md-6">
								<label for="oldpass">Old password</label> <input
									type="password" class="form-control"
									placeholder="Enter Old Password">
							</div>
							</div>
						<!-- Row-2 End -->
						<!-- Row-3 Start -->
						<div class="row">
							<div class="col-md-6">
								<label for="newpass">New password</label> <input
									type="password" class="form-control" 
									placeholder="Enter New Password">
							</div>
								<div class="col-md-6">
								<label for="retypepass">Retype new password</label> <input
									type="password" class="form-control" 
									placeholder="Retype New Password">
							</div>
						</div>
						<!-- Row-3 End -->
						<!-- Row-4 Start -->
						<div class="row">
							<div class="col-md-5"></div><div class="col-md-3"><br>
								<button class="btn btn-info btn-design">
									<span class="glyphicon glyphicon-floppy-disk"> SAVE NEW
											PASSWORD</span>
								</button>
							</div>							
						</div>
						<!-- Row-4 End -->
					</form>
					<hr />
					<form class="container-fluid">
						<!-- Row-1 Start -->
						<div class="row">
							<h3>
								<strong>PERSONAL DETAILS</strong>
							</h3>
							<hr class="hrrule">
							<br> <br>
						</div>
						<!-- Row-1 End -->

						<!-- Row-2 Start -->
						<div class="row">
							<!-- Column-1 Start -->
							<div class="col-md-6">
								<label for="firstname">First Name</label> <input type="text"
								class="form-control" 
								placeholder="Enter first name">						
							</div>
							<!-- Column-1 End -->

							<!-- Column-2 Start -->
							<div class="col-md-6">
								<label for="lastname">Last Name</label> <input type="text"
									class="form-control" 
									placeholder="Enter last name">
							</div>
						<!-- Column-2 End -->
						</div>
						<!-- Row-2 End -->

						<!-- Row-3 Start -->
						<div class="row container">
							<p>
								<b>Gender</b>
							<div class="radio">
								<label><input type="radio" name="optradio" checked>Male</label>
							</div>
							<div class="radio">
								<label><input type="radio" name="optradio">Female</label>
							</div>
							<div class="radio disabled">
								<label><input type="radio" name="optradio">Transgender</label>
							</div>
						</div>
						<!-- Row-3 End -->
						<!-- Row-4 Start -->
						<div class="row">
							<div class="form-group col-md-12">
								<label for="address">Address</label>
								<textarea rows="4" cols="50" class="form-control"></textarea>
							</div>
						</div>
						<!-- Row-4 End -->

						<!-- Row-5 Start -->
						<div class="row">
							<!-- Column-1 Start -->
							<div class="form-group col-md-3">
								<label for="city">City</label> <input type="text"
									class="form-control" >
							</div>
							<!-- Column-1 End -->
							<!-- Column-2 Start -->
							<div class="form-group col-md-3">
								<label for="zip">Zip</label> <input type="text"
									class="form-control" >
							</div>
							<!-- Column-2 End -->
							<!-- Column-3 Start -->
							<div class="form-group col-md-3">
								<label for="state">State</label> <select class="form-control">
									<option value="Telangana">Telangana</option>
								</select>
							</div>
							<!-- Column-3 End -->

							<!-- Column-4 Start -->
							<div class="form-group col-md-3">
								<label for="country">Country</label> <select
									class="form-control" >
									<option value="India">India</option>
								</select>
							</div>
							<!-- Column-4 End -->

						</div>
						<!-- Row-5 End -->
						<!-- Row-6 Start -->
						<div class="row">
							<!-- Column-1 Start -->
							<div class="form-group col-md-6">
								<label for="contact">Contact Number</label> <input type="tel"
									class="form-control" placeholder="Enter contact number">
							</div>
							<!-- Column-1 End -->
							<!-- Column-2 Start -->
							<div class="form-group col-md-6">
								<label for="email">Email</label> <input type="email"
									class="form-control" placeholder="Enter Email">
							</div>
							<!-- Column-2 End -->

						</div>
						<!-- Row-6 End -->
						<!-- Row-7 Start -->
						<div class="row">
							<div class="col-md-5"></div><div class="col-md-3">
								<button class="btn btn-info btn-design">
									<span class="glyphicon glyphicon-envelope"> SAVE
										CHANGES</span>
								</button><br><br>
							</div>
						</div>
				
					</form>
				</div>
			<!-- END OF ROW 4 COLUMN 1 -->

			<!-- START OF ROW 4 COLUMN 2 -->
				<div class="col-md-3">
					<h3>
						<strong>CUSTOMER SECTION</strong>
					</h3>
					<ul class="nav nav-pills nav-stacked">
						<li class="active"><a href="#"><span
								class="glyphicon glyphicon-list"></span> My orders</a></li>
						<li><a href="#"><span class="glyphicon glyphicon-heart"></span>
									My wishlist</a></li>
						<li><a href="#"><span class="glyphicon glyphicon-user"></span>
									My account</a></li>
						<li><a href="logout"><span
									class="glyphicon glyphicon-log-out"></span> Logout</a></li>
					</ul>
				</div>
			<!-- END OF ROW 4 COLUMN 2 -->
		</div>
	</div>
	</div>

	<!-- 4 ROW END -->
	<!-- 5 ROW START -->
		<div class="row row6">
			<br>
			<br>
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
				<input type="email">
				<button>
					<span class="glyphicon glyphicon-send"></span>
				</button>

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
</body>
</html>