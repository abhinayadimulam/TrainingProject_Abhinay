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
					<strong>MY ACCOUNT</strong>
				</h3>
			</div>

			<!-- START OF ROW 2 COLUMN 2 -->
			<div class="col-md-3"></div>

			<!-- START OF ROW 2 COLUMN 3 -->
			<div class="col-md-3 topmar">

				<h4>
					<a href="index.jsp">HOME </a> / <a href="SignInSignUpForms.jsp"> MY ACCOUNT </a>
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
					<h6>Pellentesque habitant morbi tristique senectus et netus et
						malesuada fames ac turpis egestas.</h6>
					<br>
					<hr />
					<form action="updatepass" method="post">
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
								<label for="oldpass">Old password</label> <input type="password"
									class="form-control" name="oldpass"
									placeholder="Enter Old Password">
							</div>
						</div>
						<!-- Row-2 End -->
						<!-- Row-3 Start -->
						<div class="row">

							<div class="col-md-6">
								<label for="newpass">New password</label> <input type="password"
									class="form-control" name="newpass"
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
							<div class="col-md-5"></div>
							<div class="col-md-3">
								<br>
								<button class="btn btn-info btn-design">
									<span class="glyphicon glyphicon-floppy-disk"> SAVE NEW
										PASSWORD</span>
								</button>
							</div>
						</div>
						<!-- Row-4 End -->
					</form>
					<%
						String passwordstat = (String) request.getAttribute("passwordstat");
						if (passwordstat != null) {
							if (passwordstat.equals("Yes")) {
					%>
					<div class="alert alert-success" role="alert">Saved Password
						Successfully</div>
					<br> <br>
					<%
						} else if (passwordstat.equals("No")) {
					%>
					<div class="alert alert-danger" role="alert">Changing
						Password Failed</div>
					<br> <br>
					<%
						}
						}
					%>

					<hr />
					<form action="updatedetails" method="post">
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
									class="form-control" name="firstname"
									placeholder="Enter first name">
							</div>
							<!-- Column-1 End -->

							<!-- Column-2 Start -->
							<div class="col-md-6">
								<label for="lastname">Last Name</label> <input type="text"
									class="form-control" name="lastname"
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
								<label><input type="radio" name="optradio" value="Male"
									checked>Male</label>
							</div>
							<div class="radio">
								<label><input type="radio" name="optradio"
									value="FeMale">Female</label>
							</div>
							<div class="radio disabled">
								<label><input type="radio" name="optradio"
									value="Transgender">Transgender</label>
							</div>
						</div>
						<!-- Row-3 End -->
						<!-- Row-4 Start -->
						<div class="row">
							<div class="form-group col-md-12">
								<label for="address">Address</label>
								<textarea rows="4" cols="50" class="form-control" name="address"></textarea>
							</div>
						</div>
						<!-- Row-4 End -->

						<!-- Row-5 Start -->
						<div class="row">
							<!-- Column-1 Start -->
							<div class="form-group col-md-3">
								<label for="city">City</label> <input type="text" name="city"
									class="form-control">
							</div>
							<!-- Column-1 End -->
							<!-- Column-2 Start -->
							<div class="form-group col-md-3">
								<label for="zip">Zip</label> <input type="text" name="zip"
									class="form-control">
							</div>
							<!-- Column-2 End -->
							<!-- Column-3 Start -->
							<div class="form-group col-md-3">
								<label>Country</label> <input type="text" class="form-control"
									name="country" placeholder="Enter country"> </select>
							</div>
							<!-- Column-3 End -->

							<!-- Column-4 Start -->
							<div class="form-group col-md-3">
								<label>State</label> <input type="text" class="form-control"
									name="state" placeholder="Enter state">
							</div>
							<!-- Column-4 End -->

						</div>
						<!-- Row-5 End -->
						<!-- Row-6 Start -->
						<div class="row">
							<!-- Column-1 Start -->
							<div class="form-group col-md-6">
								<label for="cont">Contact Number</label> <input type="text"
									class="form-control" name="cont"
									placeholder="Enter contact number">
							</div>
							<!-- Column-1 End -->
							<!-- Column-2 Start -->
							<div class="form-group col-md-6">
								<label for="mail">Email</label> <input type="text"
									class="form-control" name="mail" placeholder="Enter Email">
							</div>
							<!-- Column-2 End -->

						</div>
						<!-- Row-6 End -->
						<!-- Row-7 Start -->
						<div class="row">
							<div class="col-md-5"></div>
							<div class="col-md-3">
								<button class="btn btn-info btn-design">
									<span class="glyphicon glyphicon-envelope"> SAVE CHANGES</span>
								</button>
								<br> <br>
							</div>
						</div>

					</form>
					<%
						String detailsstat = (String) request.getAttribute("detailsstat");
						if (detailsstat != null) {
							if (detailsstat.equals("Yes")) {
					%>
					<div class="alert alert-success" role="alert">Saved Details
						Successfully</div>
					<br> <br>
					<%
						} else if (detailsstat.equals("No")) {
					%>
					<div class="alert alert-danger" role="alert">Changing Details
						Failed</div>
					<br> <br>
					<%
						}
						}
					%>
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
						<li><a href="SignInSignUpForms.jsp"><span class="glyphicon glyphicon-user"></span>
								My account</a></li>
						<li><a href="logout"><span
								class="glyphicon glyphicon-log-out"></span> Logout</a></li>
					</ul>
				</div>
				<!-- END OF ROW 4 COLUMN 2 -->
			</div>
		</div>
	

	<!-- 4 ROW END -->
	<!-- 5 ROW START -->
	<%@ include file="Footer1.jsp"%>

	<!-- 5 ROW END -->
	<!-- 6 ROW START -->
	<%@ include file="Footer2.jsp"%>
	
	<script src="js/jquery-3.3.1.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>
	<!-- 6 ROW END -->
</body>
</html>