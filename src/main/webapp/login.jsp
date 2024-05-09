<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<h1 style="text-align:center;margin-top:100px">Login</h1>
	<br>
	<div style="display: flex; justify-content: center; align-items:center">
		<!-- USer Authentication Form  -->
		<form action="Login" method="post">
			<input type="text" placeholder="Enter Username" name="username">
			<br>
			<br>
			<input type="password" placeholder="Enter Password" name="password">
			<br>
			<br>
		<input type="submit" value="Login" name="submit">
	</form>
	</div>
</body>
</html>