<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Redirect to display table page -->
<form action="displayMTable.jsp" method="post">
	<div>
		<label>Enter a number:</label>
		<input type='number' name='multipleNum' />
	</div>
	<div>
		<label>Enter number of rows:</label>
		<input type='number' name='rowNum' />
	</div>
	
	<button type='submit' name='btnSubmit'>Submit</button>
</form>
</body>
</html>