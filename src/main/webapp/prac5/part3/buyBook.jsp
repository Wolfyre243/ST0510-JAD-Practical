<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Buy Book</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<style>
.form-group {
	margin-bottom: 18px;
}

label {
	display: block;
	margin-bottom: 6px;
	font-weight: 600;
	color: #34495e;
}

input[type="text"], input[type="number"] {
	width: 100%;
	padding: 10px 12px;
	border: 1px solid #ddd;
	border-radius: 6px;
	font-size: 14px;
	box-sizing: border-box;
	transition: border 0.3s;
}
</style>
<body>
	<form action="add2Cart.jsp" method="post" class="p-6">
		<div class="form-grp">
			<label for="isbn">ISBN</label> <input type="text" id="isbn"
				name="isbn" placeholder="e.g. 978-0134685991" required>
		</div>

		<div class="form-grp">
			<label for="title">Title</label> <input type="text" id="title"
				name="title" placeholder="e.g. Effective Java" required>
		</div>

		<div class="form-grp">
			<label for="author">Author</label> <input type="text" id="author"
				name="author" placeholder="e.g. Joshua Bloch" required>
		</div>

		<div class="form-grp">
			<label for="publisher">Publisher</label> <input type="text"
				id="publisher" name="publisher" placeholder="e.g. Addison-Wesley"
				required>
		</div>

		<div class="flex flex-row gap-4">
			<div class="form-grp">
				<label for="quantity">Quantity</label> <input type="number"
					id="quantity" name="quantity" required>
			</div>
			<div class="form-grp">
				<label for="price">Price (USD)</label> <input type="number"
					id="price" name="price" placeholder="e.g. 45.99" required>
			</div>
		</div>

		<button type="submit"
			class="bg-neutral-300 rounded-md px-2 py-1 w-fit">Add Book</button>
	</form>
</body>
</html>