<%--
- Author: Zhang Junkai
- Date: 28th October 
- Copyright Notice: nil
- Description: Displays member info.
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display Member</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="flex flex-col p-6">
	<h1 class="text-xl font-semibold mb-4">Display Member</h1>
	<%
	final String userId = (String) session.getAttribute("userId");
	final String userRole = (String) session.getAttribute("userRole");
	%>
	<div class="flex flex-col mb-4">
		<span>Welcome, <%=userId%>!
		</span> <span>Your user role is: <%=userRole%></span>
	</div>

	<a href="login.jsp" class="bg-neutral-200 rounded-md px-2 py-1 w-fit">Home</a>
</body>
</html>