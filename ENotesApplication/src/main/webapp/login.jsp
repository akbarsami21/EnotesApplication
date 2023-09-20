<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="img/logo.png" type="image/x-icon">
<style>
.back-img {
	background: url("img/enotes_bg4.jpg");
	width: 100%;
	height: 77vh;
	background-repeat: no-repeat;
	background-size: cover;
}

.red-text {
	color: red;
	font-weight: bold;
}
</style>
<meta charset="ISO-8859-1">
<%@include file="AllContent/AllCss.jsp"%>
<title>Enotes | Log in</title>
</head>
<body>

	<%@include file="AllContent/navbar.jsp"%>

	<div class="container-fluid back-img">
		<div class="row">
			<div class="col-md-4 offset-md-4">

				<div class="card mt-5">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
						<h4>Log in</h4>
					</div>
					<%
					String invalidMsg = (String) session.getAttribute("login-failed");
					if (invalidMsg != null) {
					%>
					<div class="alert alert-danger" role="alert">
						<%=invalidMsg%></div>
					<%
					session.removeAttribute("login-failed");
					}
					%>

					<%
					String notLogIn = (String) session.getAttribute("login-error");
					if (notLogIn != null) {
					%>
					<div class="alert alert-danger" role="alert">
						<%=notLogIn%></div>
					<%
					session.removeAttribute("login-error");
					}
					%>

					<%
					String logoutMsg = (String) session.getAttribute("logout-msg");
					if (logoutMsg != null) {
					%>
					<div class="alert alert-success" role="alert">
						<%=logoutMsg%></div>
					<%
					session.removeAttribute("logout-msg");
					}
					%>

					<div class="card-body">
						<form action="profile" method="post">

							<div class="form-group">
								<label>Student ID</label> <input type="text"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="user_id">

							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="user_password">
							</div>

							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Log in</button>
						</form>

					</div>
				</div>

			</div>
		</div>
	</div>

	<%@include file="AllContent/footer.jsp"%>
</body>
</html>