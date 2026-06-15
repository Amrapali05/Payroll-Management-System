<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Employee</title>
<link rel="stylesheet" href="../css/style.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<%@ include file="../components/navbar.jsp"%>

	<div class="container mt-5">
		<div class="card p-4 shadow">

			<h3>Add Employee</h3>

			<form>
				<input class="form-control mb-2" placeholder="Name"> <input
					class="form-control mb-2" placeholder="Email"> <input
					class="form-control mb-2" placeholder="Department">

				<button class="btn btn-primary">Add</button>

			</form>

		</div>
	</div>
</body>
</html>