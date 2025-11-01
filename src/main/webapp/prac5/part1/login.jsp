<!-- 
- Author: Zhang Junkai
- Date: 28th October 
- Copyright Notice: nil
- Description: Base login page for the user.
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
	<%@ include file="header.html"%>
	<form action="verifyUser.jsp" method="post" class="flex flex-col gap-2 p-4">
		<div>
			<label>Login ID:</label> <input type='text' name='loginid'
				class="border rounded-md" />
		</div>
		<div>
			<label>Password:</label> <input type='password' name='password'
				class="border rounded-md" />
		</div>
		<button type='submit' name='btnSubmit' class="rounded-md bg-neutral-200 w-fit px-2 py-1">Login</button>
	</form>

	<div>
		<%
		String errCode = request.getParameter("errCode");

		if ("invalidLogin".equals(errCode)) {
			out.print("You have entered an invalid ID/Password.");
		}
		%>
	</div>
	<%@ include file="footer.html"%>
</body>
</html>