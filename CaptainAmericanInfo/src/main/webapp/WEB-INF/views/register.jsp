<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>

<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
<style type="text/css"><%@include file="/WEB-INF/css/style.css"%></style>
</head>
<body>

<!-- Header -->
<%@include file="./header.jsp"%>

	<main class="d-flex align-items-center mt-2 ">
	<div class="container">
		<div class="col-md-6 offset-md-3">
			<div class="card">
				<div class="card-header primary-background text-white text-center">
					<span class="fa fa-user-plus fa-3x"></span> <br>
					<p>Register Here</p>
				</div>
				<div class="card-body">
					<form id="reg-form" action="save" method="post" modelAttribute="captains">
						<div class="form-group">
							<label for="name">User Name</label> <input type="text"
								class="form-control" id="name" name="name"
								aria-describedby="emailHelp"> <small id="name"
								class="form-text text-muted">Please share your name</small>
						</div>

						<div class="form-group">
							<label for="email">Email address</label> <input type="email"
								class="form-control" id="email" name="email"
								aria-describedby="emailHelp"> <small id="email"
								class="form-text text-muted">We'll never share your
								email with anyone else.</small>
						</div>

						<div class="form-group">
							<label for="password">Password</label> <input name="password"
								type="password" class="form-control" id="password">
						</div>
						<div class="form-group">
							<label for="gender">Select Gender</label> <br> <input
								type="radio" id="gender" name="gender" value="Male">Male
							<input type="radio" id="gender" name="gender" value="Female">Female
						</div>

						<div class="form-group">
							<textarea name="about" class="form-control" id="about" rows="4"
								placeholder="Enter Something about yourself"></textarea>
						</div>

						<div class="form-group form-check">
							<input type="checkbox" class="form-check-input" name="check"
								id="check"> <label class="form-check-label" for="check">Terms
								& Condition</label>
						</div>
						<!-- <br>
						<div class="container text-center" id="loader">
						<span class="fa fa-refresh fa-spin fa-4x"></span>
						<h4>Please Wait...</h4>
						</div> -->
						<button type="submit" class="btn text-white primary-background">Submit</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	</main>


</body>
</html>