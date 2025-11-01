<%@page import="books.Book"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
final ArrayList<Book> bookArr = (ArrayList<Book>) session.getAttribute("books");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display Cart</title>
<script src="https://cdn.tailwindcss.com"></script>
<style>
table, th, td {
  border: 1px solid black;
}
</style>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>ISBN</th>
				<th>Title</th>
				<th>Author</th>
				<th>Publisher</th>
				<th>Quantity</th>
				<th>Price</th>
				<th>Total Value</th>
			</tr>
		</thead>
		<tbody>
			<%
			if (bookArr != null) {
			for (Book b : bookArr) {
			%>
			<tr>
				<td><%=b.getISBN()%></td>
				<td><%=b.getTitle()%></td>
				<td><%=b.getAuthor()%></td>
				<td><%=b.getPublisher()%></td>
				<td><%=b.getQuantity()%></td>
				<td>$<%=String.format("%.2f", b.getPrice())%></td>
				<td>$<%=String.format("%.2f", b.getPrice() * b.getQuantity())%></td>
			</tr>
			<%
			}}
			%>
		</tbody>
	</table>
	
	<a href="buyBook.jsp">Buy more books</a>
</body>
</html>