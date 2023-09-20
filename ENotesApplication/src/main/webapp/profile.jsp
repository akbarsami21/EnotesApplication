<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
UserDetails user2 = (UserDetails) session.getAttribute("userDetails");
if (user2 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("login-error", "Please Log In First!!!");
}
%>



<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="img/logo.png" type="image/x-icon">
<style>
.back-img {
	background: url("img/enotes_bg4.jpg");
	width: 100%;
	height: 80vh;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
<meta charset="ISO-8859-1">
<title>Profile | Enotes</title>
<%@include file="AllContent/AllCss.jsp"%>
</head>
<body>


	<div class="container-fluid p-0">
		<%@include file="AllContent/navbar.jsp"%>
		<div class="card py-4 back-img">
			<div class="card-body text-center">
				<img alt="" src="img/notes.png" class="img-fluid mx-auto"
					style="max-width: 330px;"><br> <br>
				<h1 class="text-black">START TAKING YOUR NOTES</h1>
				<a href="addNotes.jsp" class="btn btn-primary">Start Here</a>
			</div>
		</div>

	</div>

	<%@include file="AllContent/footer.jsp"%>
</body>
</html>