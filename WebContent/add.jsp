<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Book</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script type="text/javascript">
        function formValidation() {
            var title = document.getElementById("title").value;
            var author = document.getElementById("author").value;
            var genre = document.getElementById("genre").value;
            var year = document.getElementById("year").value;

            if (title == "") {
                alert("Book Title is Required!");
                document.getElementById("title").focus();
                return false;
            }
            if (author == "") {
                alert("Author Name is Required!");
                document.getElementById("author").focus();
                return false;
            }
            if (genre == "") {
                alert("Genre is Required!");
                document.getElementById("genre").focus();
                return false;
            }
            if (year == "") {
                alert("Year of Publication is Required!");
                document.getElementById("year").focus();
                return false;
            }
            if (isNaN(year) || year < 1000 || year > new Date().getFullYear()) {
                alert("Please enter a valid year!");
                document.getElementById("year").focus();
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
	<div class="container mt-5">
		<h2 class="text-center">Add New Book</h2>

		<form method="POST" action="view.jsp">
			<div class="mb-3">
				<label for="title" class="form-label">Book Title</label> <input
					type="text" class="form-control" id="title" name="title">
			</div>
			<div class="mb-3">
				<label for="author" class="form-label">Author</label> <input
					type="text" class="form-control" id="author" name="author">
			</div>
			<div class="mb-3">
				<label for="genre" class="form-label">Genre</label> <input
					type="text" class="form-control" id="genre" name="genre">
			</div>
			<div class="mb-3">
				<label for="year" class="form-label">Year of Publication</label> <input
					type="text" class="form-control" id="year" name="year">
			</div>
			<button type="submit" class="btn btn-primary">Add Book</button>
			<a href="view.jsp" class="btn btn-secondary">Back to View Books</a>
		</form>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
