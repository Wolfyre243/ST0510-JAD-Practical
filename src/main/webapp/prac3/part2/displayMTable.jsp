<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="p-6">
	<%
	// Retrieve number from the request parameters
	int multipleNum = Integer.parseInt(request.getParameter("multipleNum"));
	int rowNum = Integer.parseInt(request.getParameter("rowNum"));
	%>
	<h1 class="text-xl mb-4">
		Multiplication Table of
		<%=multipleNum%></h1>

	<table class="border">
		<tr>
			<th class="border px-4 text-center">Using out.print</th>
			<th class="border px-4 text-center">Using JSP expression tag</th>
		</tr>
		<tr>
			<!-- out.print -->
			<td class="border p-2">
				<%
				out.print("<table>");
				for (int i = 1; i <= rowNum; i++) {
					out.print("<tr>");
					out.print("<td class='border px-4'>" + i + " x " + multipleNum + "</td>");
					out.print("<td class='border px-4 text-center'>" + (i * multipleNum) + "</td>");
					out.print("</tr>");
				}

				out.print("</table>");
				%>
			</td>
			<!-- JSP Expression -->
			<td class="border p-2">
				<table>
					<%
					for (int i = 1; i <= rowNum; i++) {
					%>
					<tr>
						<td class="border px-4"><%=i%> x <%=multipleNum%></td>
						<td class="border px-4 text-center"><%=i * multipleNum%></td>
					</tr>
					<%
					}
					%>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>