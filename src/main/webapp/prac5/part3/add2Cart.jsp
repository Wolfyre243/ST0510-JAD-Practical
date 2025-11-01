<%@page import="books.Book"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
final String isbn = (String) request.getParameter("isbn");
final String title = (String) request.getParameter("title");
final String author = (String) request.getParameter("author");
final String publisher = (String) request.getParameter("publisher");
final int quantity = Integer.parseInt(request.getParameter("quantity"));
final double price = Double.parseDouble(request.getParameter("price"));

final ArrayList<Book> bookArr = new ArrayList<Book>();

bookArr.add(new Book(isbn, title, author, publisher, quantity, price));

session.setAttribute("books", bookArr);

response.sendRedirect("displayCart.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>