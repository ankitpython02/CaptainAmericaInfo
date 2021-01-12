<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page isELIgnored="false" %>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 	<%@page import="com.learning.entities.Captains"%> --%>
<%-- 	<% Captains captain = new Captains(); --%>
	
	
<%-- 	%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
<style type="text/css"><%@include file="/WEB-INF/css/style.css"%></style>
</head>
<body>
	<!-- Header -->
	<%@include file="./header.jsp"%>

	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3">These Are Our Captains</h1>
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">#</th>
							<th scope="col">Name</th>
							<th scope="col">Description</th>
							<th scope="col">Gender</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${captains}" var="c">
						<tr>
							<th scope="row">${c.id}</th>
							<td>${c.name}</td>
							<td>${c.about}</td>
							<td>${c.gender}</td>
							<td>
							<a href="update/${c.id}"><i class="fas fa-pen-nib"></i></a>
							<a href="delete/${c.id}"><i class="fas fa-trash text-danger"></i></a>
							</td>
						</tr>
						</c:forEach>
					
					</tbody>
				</table>
				<div class="container text-center">
				<a href="registerCaptain" class="btn btn-outline-dark">Register Captain</a>
				
				
				</div>
			</div>
		</div>
	</div>

</body>
</html>