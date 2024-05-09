<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Video</title>
</head>
<body>
	<!-- Check For Valid User Authorized Or Not  -->
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // After Logout User Goes Back Then Secured Pages Not Shows
		if(session.getAttribute("username") == null){ // Check For Valid User
			response.sendRedirect("login.jsp");
		}
	%>
	<iframe width="560" height="315" src="https://www.youtube.com/embed/4XTsAAHW_Tc?si=HUYarwK0lI9FLmBf" title="YouTube video player" frameborder="1" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
	<br>
	<br>
	<form action="Logout" method="get">
		<input type="submit" value="Logout" name="submit">
	</form>
</body>
</html>