<!DOCTYPE html>
<html>
<head>
<title>Login</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background: linear-gradient(to right, #667eea, #764ba2);
}
</style>
</head>

<body>

	<div class="card p-4 shadow" style="width: 350px;">

		<h3 class="text-center">Login</h3>

		<form action="/LoginServlet"
			method="post">

			<input type="email" name="email" class="form-control mb-3"
				placeholder="Email" required> <input type="password"
				name="password" class="form-control mb-3" placeholder="Password"
				required>

			<button class="btn btn-primary w-100">Login</button>

			<div class="text-center mt-3">
				<a href="register.jsp">Create Account</a>
			</div>

		</form>

	</div>

</body>
</html>