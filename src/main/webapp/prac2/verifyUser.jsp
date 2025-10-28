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
<title>Insert title here</title>
</head>
<body>
<div>
	<%
	String correctUser = "Lincoln";
	String correctPassword = "abc123";
	
	String errRedirectURL = "login.html?errCode=invalidLogin";
	
	String userId = request.getParameter("loginid");
	String password = request.getParameter("password");

	if (correctUser != userId || correctPassword != password) {
		response.sendRedirect(errRedirectURL);
	}
	
	%>
</div>
</body>
