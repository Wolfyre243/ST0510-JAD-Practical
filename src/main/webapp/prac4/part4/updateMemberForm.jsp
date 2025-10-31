<%@page import="queries.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
final int id = Integer.parseInt(request.getParameter("id"));
final String name = request.getParameter("name");
final int affectedRows = Member.updateMember(id, name);

final Member member = Member.getById(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Updated Member</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
	<%@ include file="header.html"%>
	<div class="flex flex-col p-6">
		<h1>
			ID is
			<%=member.getId()%>, Name is
			<%=member.getName()%></h1>
		<h1>
			Number of row(s) affected:
			<%=affectedRows%></h1>

		<a href="listMembers.jsp"
			class="mt-4 w-fit bg-neutral-300 py-1 px-2 rounded-md cursor-pointer">Back
			to List Members</a>
	</div>
	<%@ include file="footer.html"%>
</body>
</html>