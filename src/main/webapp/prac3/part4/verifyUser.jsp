<%--
- Author: Zhang Junkai
- Date: 28th October 
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
	// Set correct credentials
	final String correctUser = "Lincoln";
	final String correctPassword = "abc123";
	
	// Set redirect URLs
	final String errRedirectURL = "login.jsp?errCode=invalidLogin";
	final String successRedirectURL = "displayMember.jsp";
	
	final String userRole = "adminUser";
	
	// Retrieve login creds
	String userId = request.getParameter("loginid");
	String password = request.getParameter("password");
	
	session.setAttribute("userId", userId);
	session.setAttribute("userRole", userRole);

	if (!correctUser.equals(userId) || !correctPassword.equals(password)) {
		response.sendRedirect(errRedirectURL);
	} else {
		response.sendRedirect(successRedirectURL);
	}
	
	%>
</div>
</body>
