<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>contact</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body >
	<a href="/spring" style="margin: 20px 20px; font-size: 30px">Back</a>
	<div align="center">
		<h1 class="table-dark" style="margin: 20px 10vw; border-radius: 5px; padding: 5px 0">${ title }</h1>
		<form:form action="save" method="post" modelAttribute="department">
			<table class="table" style="width: 80%">
				<form:hidden path="id" />
				<tr>
					<th class="row">Name</th>
					<td><form:input type="text" value="${ department.name }"
							path="name" class="form-control" /></td>
				</tr>
				<tr>
					<th class="row">Address</th>
					<td>
						<div class="input-group">
							<form:input type="text" value="${ department.address }"
								path="address" class="form-control"/>
							<div class="input-group-append">
								<button class="btn btn-outline-secondary" type="button">Address
									Search</button>
							</div>
							&nbsp;&nbsp;
							<form:input type="text" value="${ department.address_search }"
								path="address_search" class="form-control"/>
							<form:input type="text"
								value="${ department.address_coordinate }"
								path="address_coordinate" class="form-control"/>
						</div>
					</td>
				</tr>
				<tr>
					<th class="row">Area</th>
					<td><form:input type="text" value="${ department.area }"
							path="area" />&nbsp;&nbsp;<span>m2</span></td>
				</tr>
				<tr>
					<th class="row">Contains</th>
					<td><form:input type="text"
							value="${ department.can_contain }" path="can_contain" />&nbsp;&nbsp;<span>Persons</span></td>
				</tr>

				<tr>
					<th class="row">Limit time rental</th>
					<td><form:input type="text"
							value="${ department.limit_time_rental }"
							path="limit_time_rental" class="form-control" /></td>
				</tr>
				<tr>
					<th class="row">Rental period</th>
					<td><form:input type="text"
							value="${ department.rental_period }" path="rental_period"
							class="form-control" /></td>
				</tr>
				<tr>
					<th class="row">Description</th>
					<td><form:textarea cols="3" class="form-control"
							aria-label="With textarea" value="${ department.descrisption }"
							path="descrisption" /></td>
				</tr>
				<tr>
					<th class="row">Image</th>
					<td><form:input type="text"
							value="${ department.image }" path="image" />
						<div class="input-group">
							<div class="custom-file">

								<input type="file" class="custom-file-input"
									id="inputGroupFile04"> <label class="custom-file-label"
									for="inputGroupFile04">Choose file</label>
							</div>
							<div class="input-group-append">
								<button class="btn btn-outline-secondary" type="button">Remove</button>
							</div>
						</div></td>
				</tr>
				<tr>
					<th class="row">attachments
					</td>
					<td><form:input type="text"
							value="${ department.attachments }" path="attachments" />
							<div class="input-group">
							<div class="custom-file">

								<input type="file" class="custom-file-input"
									id="inputGroupFile04"> <label class="custom-file-label"
									for="inputGroupFile04">Choose file</label>
							</div>
							<div class="input-group-append">
								<button class="btn btn-outline-secondary" type="button">Remove</button>
							</div>
						</div></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="save" class="btn btn-primary btn-lg btn-block" style="width: 50%; margin: 25px 0 25px 0; background: linear-gradient(
40deg
,#45cafc,#303f9f) !important;     -webkit-box-shadow: 0 2px 5px 0 rgb(55 161 255 / 26%), 0 4px 12px 0 rgb(121 155 254 / 25%);
    box-shadow: 0 2px 5px 0 rgb(55 161 255 / 26%), 0 4px 12px 0 rgb(121 155 254 / 25%); border: 0"></td>
				</tr>
			</table>
		</form:form>
	</div>
	<script>
		/* if (fullPath) {
		    var startIndex = (fullPath.indexOf('\\') >= 0 ? fullPath.lastIndexOf('\\') : fullPath.lastIndexOf('/'));
		    var filename = fullPath.substring(startIndex);
		    if (filename.indexOf('\\') === 0 || filename.indexOf('/') === 0) {
		        filename = filename.substring(1);
		    }
		    alert(filename);
		} */
	</script>
</body>
</html>