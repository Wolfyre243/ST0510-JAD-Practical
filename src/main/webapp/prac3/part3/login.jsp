<!-- 
- Author: Zhang Junkai
- Date: 28th October 
- Copyright Notice: nil
- Description: Base login page for the user.
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>

<form action="verifyUser.jsp" method="post">
	<div>
		<label>Login ID:</label>
		<input type='text' name='loginid' />
	</div>
	<div>
		<label>Password:</label>
		<input type='password' name='password' />
	</div>
	<div>
		<button type='submit' name='btnSubmit' value='Login'>Login</button>
	</div>
</form>

<div>
<%
String errCode = request.getParameter("errCode");

if ("invalidLogin".equals(errCode)) {
	out.print("You have entered an invalid ID/Password.");
}
	
%>
</div>

</body>
</html>