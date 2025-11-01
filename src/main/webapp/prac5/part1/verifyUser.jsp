<%--
- Author: Zhang Junkai
- Date: 28th October 
- Copyright Notice: nil
- Description: Verifies whether the user can log in.
 --%>

<%@page import="queries.User"%>
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
	// Set redirect URLs
	final String errRedirectURL = "login.jsp?errCode=invalidLogin";
	final String successRedirectURL = "displayMember.jsp";
	
	// Retrieve login creds
	String loginId = request.getParameter("loginid");
	String password = request.getParameter("password");
	
	final User user = User.getUserByLoginId(loginId);
	
	session.setAttribute("sessUserId", user.getUserId());
	session.setAttribute("sessUserRole", user.getUserRole());

	if (!user.checkPassword(password)) {
		response.sendRedirect(errRedirectURL);
	} else {
		response.sendRedirect(successRedirectURL);
	}
	
	%>
</div>
</body>
