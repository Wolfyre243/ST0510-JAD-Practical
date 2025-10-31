<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="queries.Member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get All Members</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="p-6">
	<%@ include file="header.html"%>
	<table class="border">
		<tr>
			<th class="border px-2">ID</th>
			<th class="border px-2">Name</th>
			<th class="border px-2">Action</th>
		</tr>
		<%
		final Member[] memberArr = Member.getAllMembers();
		for (Member m : memberArr) {
		%>
		<tr>
			<td class="border px-2"><%=m.getId()%></td>
			<td class="border px-2"><%=m.getName()%></td>
			<td class="border px-2"><a
				href="editMemberForm.jsp?id=<%=m.getId()%>"
				class="bg-neutral-300 py-0.5 px-1 rounded-md cursor-pointer">Edit</a>
			</td>
		</tr>
		<%
		}
		%>
	</table>
	<%@ include file="footer.html"%>
</body>
</html>