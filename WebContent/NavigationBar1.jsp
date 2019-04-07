<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="row row1">
		<!-- START OF ROW 1 COLUMN 1 -->
		<div class="col-md-offset-1 col-md-7">
			<p>Contact Us on +91 40 66217777</p>
		</div>
		<!-- START OF ROW 1 COLUMN 2 -->
		<div class="col-md-4 header">


			<%
				String w = (String) session.getAttribute("USERNAME");
			%>
			<%
				if (w == null) {
			%>
			<a href="SignInSignUpForms.jsp"><span
				class="glyphicon glyphicon-log-in"></span>SIGN IN</a> <a
				href="SignInSignUpForms.jsp"><span
				class="glyphicon glyphicon-user"></span>SIGN UP</a>
				<a href="#" class="btn btn-block btn-facebook"><span
				class="fa fa-facebook"></span></a> <a href="#"
				class="btn btn-block btn-google-plus"><span
				class="fa fa-google-plus"></span></a> <a href="#"
				class="btn btn-block btn-twitter"><span class="fa fa-twitter"></span></a>
			<a href="#" class="btn btn-block btn-envelope"><span
				class="fa fa-envelope"></span></a>
			<%
				} else {
			%>
			<div class="dropdown tophei1" >
				<a class="btn btn-link" type="button"
					 data-toggle="dropdown" >Welcome <%= w %>			
					<span class="caret"></span>
				</a>
				<ul class="dropdown-menu" role="menu" >
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="SignInSignUpForms.jsp">My Account</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="SignInSignUpForms.jsp">ChangePassword</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="logout">Signout</a></li>

				</ul>
				<a href="#" class="btn btn-block btn-facebook"><span
				class="fa fa-facebook"></span></a> <a href="#"
				class="btn btn-block btn-google-plus"><span
				class="fa fa-google-plus"></span></a> <a href="#"
				class="btn btn-block btn-twitter"><span class="fa fa-twitter"></span></a>
			<a href="#" class="btn btn-block btn-envelope"><span
				class="fa fa-envelope"></span></a>
			</div>



			<%
				}
			%>

			
		</div>
</body>
</html>