<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book Stores</title>
    <style>
        body {
            text-align: center;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        hr {
            border: none;
            height: 2px;
            background-color: #333;
            margin: 20px auto;
        }
        h1, h2 {
            color: #333;
        }
        table {
            margin: 20px auto;
            border: 2px solid blueviolet;
            background-color: lightsteelblue;
            border-collapse: collapse;
            width: 50%;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ddd;
        }
        .operation-button {
            font-size: 16px;
        }
        .logout-button input[type="submit"] {
            background-color: #f44336;
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-top: 20px;
            cursor: pointer;
            border-radius: 5px;
        }
        .logout-button input[type="submit"]:hover {
            background-color: #d32f2f;
        }
    </style>
</head>
<body>

<%
	String username = (String) session.getAttribute("username");
	%>
	<%
	if (username != null) {
	%>
	<h3>
		<b>Hello, <%=username%>!
		</b>
	</h3>
	<%
	} else {
	%>
	<h3>Error: Username not found in session!</h3>
	<%
	}
	%>


    <hr>
    <h1> Dynamic Book Shop welcome you ...</h1>
    <hr>
    <h2>... Let's perform different actions ...</h2>

   

    <table>
        <tr>
            <td class="operation-button">
                <form action="Insert.jsp">
                    <label for="insert">Insert Operation:</label>
                    <br><br>
                    <input type="submit" value="Go to Insert">
                </form>
            </td>

            <td class="operation-button">
                <form action="Display.jsp">
                    <label for="display">Display Operation:</label>
                    <br><br>
                    <input type="submit" value="Go to Display">
                </form>
            </td>
        </tr>

        <tr>
            <td class="operation-button">
                <form action="Delete.jsp">
                    <label for="delete">Delete Operation:</label>
                    <br><br>
                    <input type="submit" value="Go to Delete">
                </form>
            </td>

            <td class="operation-button">
                <form action="Update.jsp">
                    <label for="update">Update Operation:</label>
                    <br><br>
                    <input type="submit" value="Go to Update">
                </form>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="logout-button">
                <form action="Login.jsp"> <!-- Adjust the action attribute based on your servlet or logout mechanism -->
                    <input type="submit" value="Logout">
                </form>
            </td>
        </tr>
    </table>
</body>
</html>
