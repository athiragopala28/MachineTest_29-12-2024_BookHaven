<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.ArrayList, java.util.List"%>
<%@ page import="Bean.BookBean"%>
<%@ page import="Dao.BookDao"%>

<%
	List<BookBean> books = new ArrayList<>();
	BookDao bookDao = new BookDao();

	if (request.getMethod().equalsIgnoreCase("POST")) {
		// Processing form data
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		String genre = request.getParameter("genre");
		int year = Integer.parseInt(request.getParameter("year"));

		// Add book
		BookBean newBook = new BookBean();
		newBook.setTitle(title);
		newBook.setAuthor(author);
		newBook.setGenre(genre);
		newBook.setYearOfPublication(year);

		try {
			bookDao.addBook(newBook);
			books = bookDao.getAllBooks(); // Refresh list after adding new book
		} catch (SQLException e) {
			e.printStackTrace();
			out.print("<script type='text/javascript'>");
			out.print("alert('An error occurred while adding the book.');");
			out.print("</script>");
		}
	} else {
		try {
			books = bookDao.getAllBooks();
		} catch (SQLException e) {
			e.printStackTrace();
			out.print("<script type='text/javascript'>");
			out.print("alert('An error occurred while fetching books.');");
			out.print("window.location.href = 'add.jsp';");
			out.print("</script>");
		}
	}
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>View Books</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background-color: gray;
	margin: 0;
}

.container {
	margin-top: 2rem;
}

.table-container {
	background-color: white;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	padding: 1rem;
}

h1 {
	color: #5bc0de;
}

.btn {
	margin: 5px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="table-container">
			<h1>Books</h1>
			<a href="add.jsp" class="btn btn-primary">Add New Book</a>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>ID</th>
						<th>Title</th>
						<th>Author</th>
						<th>Genre</th>
						<th>Year of Publication</th>
					</tr>
				</thead>
				<tbody>
					<%
						if (books != null && !books.isEmpty()) {
							for (BookBean book : books) {
					%>
					<tr>
						<td><%=book.getId()%></td>
						<td><%=book.getTitle()%></td>
						<td><%=book.getAuthor()%></td>
						<td><%=book.getGenre()%></td>
						<td><%=book.getYearOfPublication()%></td>
					</tr>
					<%
						}
						} else {
					%>
					<tr>
						<td colspan="5">No books found.</td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
