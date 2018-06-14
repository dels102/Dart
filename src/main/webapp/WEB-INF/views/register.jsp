<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<title>Dart</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/styles.css"
	type="text/css" rel="stylesheet">
<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link
	href="${pageContext.request.contextPath}/resources/css/Footer-with-button-logo.css"
	type="text/css" rel="stylesheet">
</head>

<body id="bodyBack">

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Dart</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Główna</a></li>
				<li><a href="#">Dodaj wpis</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li>
					<form class="navbar-form navbar-right">
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Szukaj">
							<div class="input-group-btn">
								<button class="btn btn-default" type="submit">
									<i class="glyphicon glyphicon-search"></i>
								</button>
							</div>
						</div>
					</form>
				</li>
				<li><a href="#"><span class="glyphicon glyphicon-user"></span>
						Zarejestruj się</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
						Zaloguj się</a></li>
			</ul>
		</div>
	</nav>

	<div class="container" id="LogContainer">
		<div class="row vertical-offset-100">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-success">
					<div class="panel-heading">
						<h3 class="panel-title">Rejestracja</h3>
					</div>
					<div class="panel-body">
						<form accept-charset="UTF-8" role="form">
							<fieldset>
								<div class="form-group">
									<input class="form-control" placeholder="Nazwa użytkownika"
										required autofocus type="text">
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="Hasło" name="password"
										type="password" required>
								</div>
								<div class="form-group">
									<input name="inputEmail" type="email" class="form-control"
										placeholder="Email" required autofocus />
								</div>
								<input class="btn btn-lg btn-success btn-block" type="submit"
									value="Zaloguj się">
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<footer id="myFooter">
		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<h2 class="logo">
						<a href="#"> Dart </a>
					</h2>
					<h6 class="logo">
						<a href="#"> Serwis do dzielenia się treścią z branży
							elektronicznej </a>
					</h6>
				</div>
				<div class="col-sm-3">
					<h5>Dołącz do nas!</h5>
					<ul>
						<li><a href="#">Strona główna</a></li>
						<li><a href="#">Zarejestruj się</a></li>
						<li><a href="#">Zaloguj się</a></li>
					</ul>
				</div>
				<div class="col-sm-3">
					<h5>O nas</h5>
					<ul>
						<li><a href="#">Informacje</a></li>
						<li><a href="#">Kontakt</a></li>
					</ul>
				</div>
				<div class="col-sm-2">
					<div class="social-networks">
						<a href="#" class="twitter"><i class="fa fa-twitter"></i></a> <a
							href="#" class="facebook"><i class="fa fa-facebook"></i></a> <a
							href="#" class="google"><i class="fa fa-google-plus"></i></a>
					</div>
				</div>
			</div>
		</div>
	</footer>

	<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
	<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<script src="resources/js/bootstrap.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>
</html>