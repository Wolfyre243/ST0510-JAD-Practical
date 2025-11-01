<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
Object userIdObj = session.getAttribute("sessUserId");
if (userIdObj == null) {
    response.sendRedirect("login.jsp?errCode=invalidLogin");
    return;
}

final int sessUserId = (int) userIdObj;
final String sessUserRole = (String) session.getAttribute("sessUserRole");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display Member</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="flex flex-col px-6">
	<%@ include file="header.html"%>
	<h1 class="text-xl font-semibold mb-4">Display Member</h1>

	<div class="flex flex-col mb-4">
		<span>Welcome, <%=sessUserId%>!
		</span> <span>Your user role is: <%=sessUserRole%></span>
	</div>

	<a href="login.jsp" class="bg-neutral-200 rounded-md px-2 py-1 w-fit">Home</a>
	<%@ include file="footer.html"%>
</body>
</html>