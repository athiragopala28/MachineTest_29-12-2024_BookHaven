<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<style>
.navbar-brand {
	flex-grow: 1;
	font-size: 1.5rem;
	text-align: left;
}

.navbar-nav .nav-item {
	margin-right: 10px;
}

.icon-color {
	color: #000000;
}

.btn-black {
	color: #000000;
	border-color: #000000;
	background-color: #ffffff;
}

.btn-black:hover {
	color: #000000;
	background-color: #f0f0f0;
	border-color: #000000;
}

.btn-search {
	color: #000000;
	border-color: #000000;
	background-color: #ffffff;
}

.btn-search:hover {
	color: #000000;
	background-color: #f0f0f0;
	border-color: #000000;
}

.form-control {
	border-color: #4caf50;
}

footer {
	background-color: #001f3f;
	padding: 40px 0;
	color: #ffffff;
	border-top: 1px solid #dee2e6;
}

.footer-content {
	display: flex;
	justify-content: space-between;
	gap: 20px;
	flex-wrap: wrap;
}

.footer-section {
	flex: 1;
	min-width: 200px;
}

.footer-section h5 {
	font-weight: bold;
	margin-bottom: 15px;
}

.footer-section ul {
	list-style: none;
	padding: 0;
}

.footer-section ul li {
	margin-bottom: 10px;
}

.footer-section a {
	color: #ffffff;
	text-decoration: none;
}

.footer-section a:hover {
	text-decoration: underline;
}

.social-icons a {
	color: #ffffff;
	font-size: 20px;
	margin-right: 10px;
}

.social-icons a:hover {
	color: #adb5bd;
}
</style>
<title>BookHaven</title>
</head>
<body>

	<!-- Navbar -->
	
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">BookHaven</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav me-auto">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Manage Books </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="add.jsp">Add Book</a></li>
							<li><a class="dropdown-item" href="view.jsp">View Book</a></li>
						</ul></li>
				</ul>
				<form class="d-flex">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
			</div>
		</div>
	</nav>
	
	<!-- Carousel Section -->
	
	<div id="carouselExampleIndicators" class="carousel slide">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="3" aria-label="Slide 4"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="./images/carosel1.jpg" class="d-block w-100"
					height="800px" alt="Slide 1">
			</div>
			<div class="carousel-item">
				<img src="./images/carosel2.jpg" class="d-block w-100"
					height="800px" alt="Slide 2">
			</div>
			<div class="carousel-item">
				<img src="./images/carosel3.jpg" class="d-block w-100"
					height="800px" alt="Slide 3">
			</div>
			<div class="carousel-item">
				<img src="./images/carosel4.jpg" class="d-block w-100"
					height="800px" alt="Slide 4">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
	
	<!-- Footer Section  -->

	<footer>
		<div class="footer-section">
			<h5>Follow Us</h5>
			<div class="social-icons">
				<a href="#"><i class="fab fa-facebook"></i></a> <a href="#"><i
					class="fab fa-twitter"></i></a> <a href="#"><i
					class="fab fa-instagram"></i></a> <a href="#"><i
					class="fab fa-pinterest"></i></a>
			</div>
		</div>
		<div class="text-center mt-4">
			<p>&copy; 2024 BookHaven. All rights reserved.</p>
		</div>
	</footer>

	<!-- Bootstrap JS  -->
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
