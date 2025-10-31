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
	<table class="border">
	  <tr>
	    <th class="border px-2">ID</th>
	    <th class="border px-2">Name</th>
	  </tr>
	<%
	final Member[] memberArr = Member.getAllMembers();
	for (Member m : memberArr) {
	%>
	  <tr>
	    <td class="border px-2"><%= m.getId() %></td>
	    <td class="border px-2"><%= m.getName() %></td>
	  </tr>
	<%} %>
	</table>
</body>
</html>