<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Users</title>
</head>
<body>
<jsp:include page="layout/header.jsp"></jsp:include>

	<div class="container">
		<h3>List of Users</h3>
		<table border="1" id="usertable" class="table bordered">
			<thead>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>EMail</th>
					<th>Password</th>
					<th>Created Date</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="user" items="${USERLIST}">
					<tr>
						<td>${user.id}</td>
						<td>${user.name}</td>
						<td>${user.email}</td>
						<td>${user.password}</td>
						<td>${user.createdDate}</td>
						<td><a
							href="<%=request.getContextPath()%>/users/edit?id=${user.id}"
							class="fa fa-pencil" data-toggle="tooltip" data-placement="top"
							aria-hidden="true" title="edit"></a> <a
							href="<%=request.getContextPath()%>/users/delete?id=${user.id}"
							class="fa fa-times" aria-hidden="true" data-toggle="tooltip"
							data-placement="top" title="remove"> </a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>
</body>
</html>