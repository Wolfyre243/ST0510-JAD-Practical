<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="queries.Member" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get All Members</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="p-6">
<%
final Member[] memberArr = Member.getAllMembers();
for (Member m : memberArr) {
%>
  <h1>id: <%= m.getId() %>, name: <%= m.getName() %></h1>
<%} %>
</body>
</html>