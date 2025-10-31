<%@page import="queries.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
final int userId = Integer.parseInt(request.getParameter("id"));
final Member member = Member.getById(userId);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Member Form</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
	<%@ include file="header.html"%>
	<div class="p-6">
		<h1 class="mb-4">
			id:
			<%=member.getId()%>, name:
			<%=member.getName()%></h1>

		<div class="w-full flex flex-col justify-center items-center">
			<h1 class="text-2xl text-center mb-4">Edit Member Form</h1>
			<form action="updateMemberForm.jsp" method="post" class="flex flex-col gap-2">
				<div class="flex flex-row gap-2">
					<label>ID:</label> <input type="text" readonly value="<%=member.getId()%>"
						name="id" />
				</div>
				<div class="flex flex-row gap-2">
					<label>Name:</label> <input type="text" value="<%=member.getName()%>"
						name="name" />
				</div>
				<button type="submit"
					class="rounded-md bg-neutral-200 w-fit px-2 py-1">Submit</button>
			</form>
		</div>
	</div>
	<%@ include file="footer.html"%>
</body>
</html>