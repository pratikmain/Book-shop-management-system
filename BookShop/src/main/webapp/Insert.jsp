<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }

        .header {
            text-align: center;
            border-bottom: 2px solid #333;
            padding-bottom: 10px;
            margin-bottom: 20px;
        }

        .form-container {
            border: 2px solid black;
            border-radius: 15px;
            padding: 20px;
        }

        .form-container form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .form-container label {
            margin-bottom: 10px;
        }

        .form-container input[type="text"],
        .form-container input[type="number"] {
            padding: 5px;
            margin-bottom: 10px;
            width: 200px;
        }

        .form-container input[type="submit"] {
            padding: 5px 10px;
            background-color: #333;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .form-container input[type="submit"]:hover {
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
        <div class="form-container">
         <center>   <h2> insert page </h2>   </center>
            <form action="Insert" method="get">
                <label for="id">Enter Id</label>
                <input type="number" id="id" name="id" required="required">

                <label for="name">Enter Book Name</label>
                <input type="text" id="name" name="name" required="required">

                <label for="author">Enter Author name</label>
                <input type="text" id="author" name="author" required="required">

                <label for="price">Enter the price</label>
                <input type="number" id="price" name="price" required="required">

                <input type="submit" value="Add book" required="required">
            </form>
            <br>
            <form action="MainPage.jsp">
                <input type="submit" value="Back">
            </form>
        </div>
    </div>
</body>
</html>
