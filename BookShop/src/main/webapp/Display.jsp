<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
}

.operation {
	border: 2px solid black;
	border-radius: 15px;
	width: 300px;
	padding: 10px;
	margin: 20px auto;
}

.operation form {
	display: flex;
	flex-direction: column;
	align-items: center;
}

.operation label {
	margin-bottom: 10px;
	text-align: center;
}

.operation input[type="submit"] {
	padding: 5px 10px;
	background-color: #333;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	margin-top: 20px;
}

.operation input[type="submit"]:hover {
	background-color: #555;
}
</style>
</head>
<body>

	<div class="container">
		<div class="header" align="center">
			<hr>
			<h1>Dynamic Book Shop</h1>
			<hr>
		</div>

		<div class="operation">
			<form action="Display">
				<h3>
					<center>Display operation</center>
				</h3>
				<h3 style="margin-top: 30px;">
					<center>Click below to see the database ... !!!</center>
				</h3>
				<center>
					<input type="submit" value="Display collection">
				</center>
			</form>
			<form action="MainPage.jsp">
				<input type="submit" value="Back">
			</form>
		</div>
</body>
</html>
