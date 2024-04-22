<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

.container {
	width: 20%;
	margin: 100px auto;
	padding: 20px;
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

h1 {
	text-align: center;
	color: #333;
}

input[type="text"], input[type="password"], input[type="submit"] {
	width: 100%;
	padding: 10px;
	margin-bottom: 10px;
	box-sizing: border-box;
	border: 1px solid #ccc;
	border-radius: 5px;
}

input[type="submit"] {
	background-color: blue;
	color: white;
	border: none;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #45a049;
}
</style>
</head>
<body>
<hr>
<h1>Welcome To Dynamic Book Shop </h1>
<hr>	
	<div class="container">
		<h1>Login</h1>
		<form action="Login" method="get">
			<label for="username">Username:</label> <input type="text"
				id="username" name="username" required> <br> <label
				for="password">Password:</label> <input type="password"
				id="password" name="password" required> <br> <input
				type="submit" value="Login">
		</form>
	</div>
</body>
</html>