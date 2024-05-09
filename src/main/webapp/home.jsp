<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>

	<!-- Check For Valid User Authorized Or Not  -->
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // After Logout User Goes Back Then Secured Pages Not Shows
		if(session.getAttribute("username") == null){ // Check For Valid User
			response.sendRedirect("login.jsp");
		}
	%>
	<h1>Welcome ${username}</h1>
	<a href="video.jsp">Go To My Video</a>
	
	<br>
	<br>
	<form action="Logout" method="get">
		<input type="submit" value="Logout" name="submit">
	</form>
</body>
</html>