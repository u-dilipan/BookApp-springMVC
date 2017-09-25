<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>update user</title>
</head>
<body>
	<jsp:include page="layout/header.jsp"></jsp:include>
	<div class="container">
		<h3>Edit User</h3>
		<form action="update" method="post">
			<div class="form-group row">
				<label for="id" class="col-2 col-form-label">User Id</label>
				<div class="col-5">
					<input class="form-control" type="text" id="id" name="id"
						value="${USER.id}" readonly />
				</div>
			</div>
			<div class="form-group row">
				<label for="name" class="col-2 col-form-label">User Name</label>
				<div class="col-5">
					<input class="form-control" type="text" id="name" name="name"
						value="${USER.name}" required autofocus />
				</div>
			</div>
			<div class="form-group row">
				<label for="author_name" class="col-2 col-form-label">Email</label>
				<div class="col-5">
					<input class="form-control" type="text" id="email"
						name="email" value="${USER.email}" required />
				</div>
			</div>
			<div class="form-group row">
				<label for="price" class="col-2 col-form-label">Password</label>
				<div class="col-5">
					<input class="form-control" type="text" id="password" name="password"
						value="${USER.password}" min="1" required />
				</div>
			</div>
			<div class="form-group row">
				<label for="published_date" class="col-2 col-form-label">User
					Created Date</label>
				<div class="col-5">
					<input class="form-control" type="text" id="created_date"
						name="created_date" value="${USER.createdDate}" readonly />
				</div>
			</div>
			<div class="form-group row">
				<div class="col-5">
					<input class="form-control-lg btn btn-primary" type="submit"
						value="Update">
				</div>
			</div>
		</form>
	</div>
</body>
</html>