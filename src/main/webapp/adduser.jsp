<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>add user</title>
</head>
<body>
			<jsp:include page="layout/header.jsp"></jsp:include>
			<div class="container">
			  <h3>Insert User</h3>
			  <form action="users/save" method="post">
			  	<div class="form-group row">
				<label for="user_name" class="col-2 col-form-label">User Name</label>
				<div class="col-5">
					<input class="form-control" type="text" id="name" name="name"
						required autofocus />
				</div>
			</div>
			<div class="form-group row">
				<label for="email" class="col-2 col-form-label">email</label>
				<div class="col-5">
					<input class="form-control" type="text" id="email" 
								name="email" required autofocus />
				</div>
			</div>
			<div class="form-group row">
				<label for="pass" class="col-2 col-form-label">Password</label>
				<div class="col-5">
					<input class="form-control" type="text" id="pass" name="pass" required />
				</div>
			</div>
			<div class="form-group row">
				<div class="col-5">
					<input class="form-control-lg btn btn-primary" type="submit"
						value="Save">
				</div>
			</div>
			  
			  </form>
			</div>
</body>
</html>