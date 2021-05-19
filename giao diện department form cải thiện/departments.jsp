<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<div align="center">
		<h1>Department Manager</h1>
		<h3>
			<a href="new">New Department</a>
		</h3>
		<form:form action="searchDepartment" class="form-inlinefr-cs"
			method="post"
			style="display: flex; flex-direction: row-reverse; width:100%; width: 96%; margin: 50px 0 20px 0;">
			<div class=" mb-2 mx-auto">
				Filter: <input type="search" th:value="${keyword}" name="keyword">

				<button type="submit" value="Search" class="btn btn-primary" style="margin-bottom: 3px;">Search</button>

				<button type="button" value="Clear" id="buttonClear"
					class="btn btn-secondary" style="margin-bottom: 3px;">Clear</button>
			</div>
		</form:form>

		<table class="table" style="width: 96%">
			<thead class="thead-dark">
				<tr>
					<th scope="col">No</th>
					<th scope="col">Name</th>
					<th scope="col">Address</th>
					<th scope="col">Limit_time_rental</th>
					<th scope="col">Rental_period</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${listDepartment}" var="aDepartment"
					varStatus="status">
					<tr>
						<td>${ status.index + 1 }</td>
						<td>${ aDepartment.name }</td>
						<td>${ aDepartment.address }</td>
						<td>${ aDepartment.limit_time_rental }</td>
						<td>${ aDepartment.rental_period }</td>
						<td><a href="edit?id=${aDepartment.id }">Edit</a>
							&nbsp;&nbsp; <a href="delete?id=${aDepartment.id }">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>