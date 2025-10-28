<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
<%
// Retrieve number from th request parameters
int num = Integer.parseInt(request.getParameter("multipleNum"));
%>
<h1 class="text-xl mb-4">Multiplication Table of <%= num %></h1>
<div>
	<table>
	    <%
	    for (int i = 1; i <= 10; i++) { 
	    %>
		<tr>			
			<td class="border px-4"><%= i %> x <%= num %></td>
			<td class="border px-4 text-center"><%= i * num %></td>
		</tr>
		<% 
		}
		%>
	</table>
</div>
</body>
</html>