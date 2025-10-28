<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Map"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Check Modules</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="flex flex-col p-6">
	<%
	final Map<String, String[]> parameters = request.getParameterMap();
	if (parameters.isEmpty()) {
	%>
	<h1 class="mb-4">You have no modules this semester!</h1>
	<%
	} else {
	%>
	<h1 class="mb-4">You are taking:</h1>
	<ul class="ms-6 list-disc">
		<%
		for (Map.Entry<String, String[]> param : parameters.entrySet()) {
		%>
		<li><%=param.getValue()[0]%></li>
		<%
		}
		%>
	</ul>
	<%
	}
	%>
</body>
</html>