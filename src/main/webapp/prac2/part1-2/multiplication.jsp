<%--
- Author: Zhang Junkai
- Date: 28th October 
- Copyright Notice: nil
- Description: Displays a multiplication table
 --%>

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
<h1 class="text-xl mb-4">Multiplication Table of 5</h1>
<div>
	<table>
	    <%
	    int num = 5;
	    for (int i = 1; i <= num; i++) { 
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
