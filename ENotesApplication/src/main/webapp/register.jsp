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
	height: 153vh;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
<meta charset="ISO-8859-1">
<title>Register | Enotes</title>
<%@include file="AllContent/AllCss.jsp"%>

</head>
<body>
	<%@include file="AllContent/navbar.jsp"%>

	<div class="container-fluid back-img">
		<div class="row">
			<div class="col-md-4 offset-md-4">

				<div class="card mt-5">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
						<h4>Registration Form</h4>
					</div>


					<%
					String regMsg = (String) session.getAttribute("reg-success");
					if (regMsg != null) {
					%>
					<div class="alert alert-success" role="alert">
						<%=regMsg%>Login<a href="login.jsp"> Click Here</a>
					</div>
					<%
					session.removeAttribute("reg-success");
					}
					%>

					<%
					String faieldMsg = (String) session.getAttribute("reg-faield");
					if (faieldMsg != null) {
					%>
					<div class="alert alert-danger" role="alert">
						<%=faieldMsg%>
					</div>
					<%
					session.removeAttribute("reg-faield");
					}
					%>


					<div class="card-body">
						<form action="register" method="post">
							<div class="form-group">
								<label>Student ID</label> <input type="text"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="user_id">

							</div>
							<div class="form-group">
								<label>Name</label> <input type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="user_name">

							</div>
							<div class="form-group">
								<label for="department">Department</label> <select
									class="form-control" name="user_dept">
									<option selected disabled>---Select Department---</option>
									<option value="Computer Science And
										Engineering">Computer
										Science And Engineering</option>
									<option value=" Electrical and Electronic Engineering">
										Electrical and Electronic Engineering</option>
									<option value="Mechanical Engineering">Mechanical
										Engineering</option>
									<option value="Civil Engineering">Civil Engineering</option>

								</select>

							</div>
							<div class="form-group">
								<label for="gender">Select Gender</label> <br> <input
									type="radio" id="gender" name="gender" value="male">Male
								<input type="radio" id="gender" name="gender" value="female">FeMale
							</div>
							<div class="form-group">
								<label>Address</label> <input type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="user_address">

							</div>
							<div class="form-group">
								<label>Email</label> <input type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="user_email">

							</div>
							<div class="form-group">
								<label for="date_of_birth">Date of Birth</label> <input
									type="date" class="form-control" id="date_of_birth"
									placeholder="YYYY-MM-DD" name="user_dob">
							</div>


							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="user_password">
							</div>
							<div class="form-group">
								<label for="pic">Picture</label> <input type="file"
									class="form-control" id="pic" name="user_pic">
							</div>
							<br>


							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Sign up</button>
						</form>

					</div>
				</div>

			</div>
		</div>
	</div>
	<%@include file="AllContent/footer.jsp"%>
</body>
</html>