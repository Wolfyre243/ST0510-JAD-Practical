
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.time.LocalDateTime" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
<%
String greeting = "";
int hour = LocalDateTime.now().getHour();

if (hour >= 5 && hour < 12) {
    greeting = "Good Morning";
} else if (hour >= 12 && hour < 17) {
    greeting = "Good Afternoon";
} else if (hour >= 17 && hour < 22) {
    greeting = "Good Evening";
} else {
    greeting = "Good Night";
}

// out.print("Hello World!");
%>

<h1 id="greeting">e</h1>

<script>
	const studentId = prompt('Enter your Student ID: ');
	const studentName = prompt('Enter your name: ');
	
	let greeting = '';
	const hour = (new Date()).getHours();
	if (hour >= 5 && hour < 12) {
		greeting = "Good Morning";
	} else if (hour >= 12 && hour < 17) {
        greeting = "Good Afternoon";
    } else if (hour >= 17 && hour < 22) {
        greeting = "Good Evening";
    } else {
        greeting = "Good Night";
    }
	
	const message = greeting + '! ' + studentName + ' (' + studentId + ')'
	
	alert(message);
	document.getElementById("greeting").textContent = message;
	
</script>

</body>
</html>