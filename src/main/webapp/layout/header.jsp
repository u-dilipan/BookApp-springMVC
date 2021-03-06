<!-- Latest compiled and minified Bootstrap CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css">
<!-- fontawesome-alternative for glyphicons -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/font-awesome.min.css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/jquery.dataTables.min.css">

<!-- jQuery library -->
<script
	src="<%=request.getContextPath()%>/assets/js/jquery-3.2.1.slim.min.js"></script>

<!-- Popper -->
<script src="<%=request.getContextPath()%>/assets/js/popper.min.js"></script>

<!-- Latest compiled and minified Bootstrap JavaScript -->
<script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>

<!-- jQuery datatable -->
<script
	src="<%=request.getContextPath()%>/assets/js/jquery.dataTables.min.js"></script>

<script>
	$(document).ready(function() {
		$('#booktable').DataTable();
		$('[data-toggle="tooltip"]').tooltip();

	});
</script>

<style>
/* Move down content because we have a fixed navbar that is 3.5rem tall */
body {
	padding-top: 4.5rem;
}
</style>



<%
	boolean LOGGED_IN_USER = true;
	String name = "Dilip";
%>
<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
	<a class="navbar-brand" href="#">Online Book Store</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarsExampleDefault"
		aria-controls="navbarsExampleDefault" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarsExampleDefault">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="#">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<%
				if (LOGGED_IN_USER) {
			%>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#users" id="dropdown01"
				data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Users</a>
				<div class="dropdown-menu" aria-labelledby="dropdown01">
					<a class="dropdown-item" href="<%=request.getContextPath()%>/listusers.jsp">List Users</a> <a
						class="dropdown-item" href="adduser.jsp">Add User</a>
					<!-- <a class="dropdown-item" href="#myprofile">My Profile</a> -->
				</div></li>
			
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="" id="dropdown01"
				data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Books</a>
				<div class="dropdown-menu" aria-labelledby="dropdown01">
					<a class="dropdown-item" href="<%=request.getContextPath()%>/listbooks.jsp">List Books</a>
				    <a class="dropdown-item" href="addbook.jsp">Add Book</a>
				</div></li>
			
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#orders" id="dropdown01"
				data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Orders</a>
				<div class="dropdown-menu" aria-labelledby="dropdown01">
					<a class="dropdown-item" href="#orders">List Orders</a> <a
						class="dropdown-item" href="#myorders">My Orders</a>
				</div></li>
			<%
				}
			%>
		</ul>
		<ul class="navbar-nav mr-auto">
			<%
				if (LOGGED_IN_USER) {
			%>
			<li><a class="nav-link" href=""> Welcome <%=name%>
			</a></li>
			<li><a class="nav-link" href="">Logout</a></li>
			<%
				} else {
			%>
			<li><a class="nav-link" href="#"> Login </a></li>
			<%
				}
			%>
		</ul>
	</div>
</nav>