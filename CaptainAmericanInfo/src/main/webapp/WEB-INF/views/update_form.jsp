<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"  isELIgnored="false"%>
	<%@page import="com.learning.entities.Captains"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> 
	<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
	<% Captains captains = (Captains)session.getAttribute("currentUser"); %>
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
					<p>Update Captains Details</p>
				</div>
				<div class="card-body">
					<form id="reg-form" method="post" action="${pageContext.request.contextPath}/updatecaptain?id=${captains.id}" modelAttribute="captains">
					<div class="form-group">
							<label for="Id">Captain ID</label> <input value="${captains.id}"><small class="form-text text-muted"></small>
						</div>
					
						<div class="form-group">
							<label for="name">User Name</label> <input type="text"
								class="form-control" id="name" name="name"
								aria-describedby="emailHelp" value="${captains.name}"> <small id="name"
								class="form-text text-muted"></small>
						</div>

						<div class="form-group">
							<label for="email">Email address</label> <input type="email"
								class="form-control" id="email" name="email"
								aria-describedby="emailHelp" value="${captains.email}"> <small id="email"
								class="form-text text-muted"></small>
						</div>

						<div class="form-group">
							<textarea name="about" class="form-control" id="about" rows="4"
								placeholder="Enter Something about yourself">${captains.about}
								</textarea>
						</div>
						<!-- <br>
						<div class="container text-center" id="loader">
						<span class="fa fa-refresh fa-spin fa-4x"></span>
						<h4>Please Wait...</h4>
						</div> -->
						<button type="submit" class="btn text-white primary-background">Update</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	</main>


</body>
</html>