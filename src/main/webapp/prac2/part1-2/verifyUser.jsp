<%--
- Author: Zhang Junkai
- Date: 23rd October 
- Copyright Notice: nil
- Description: Verifies whether the user can log in.
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Verify User</title>
</head>
<body>
<div>
	<%
	String correctUser = "Lincoln";
	String correctPassword = "abc123";
	
	String errRedirectURL = "login.jsp?errCode=invalidLogin";
	String successRedirectURL = "multiplication.jsp";
	
	String userId = request.getParameter("loginid");
	String password = request.getParameter("password");

	if (!correctUser.equals(userId) || !correctPassword.equals(password)) {
		response.sendRedirect(errRedirectURL);
	} else {
		response.sendRedirect(successRedirectURL);
	}
	
	%>
</div>
</body>
