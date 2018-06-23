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

	<jsp:include page="fragment/navbar.jsp" />

	<div class="container" id="RegContainer">
		<div class="row vertical-offset-100">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Rejestracja</h3>
					</div>
					<div class="panel-body">
						<form accept-charset="UTF-8" role="form" method="post"
							action="register">
							<fieldset>
								<div class="form-group">
									<input name = "username" class="form-control" placeholder="Nazwa użytkownika"
										required autofocus type="text">
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="Hasło" name="password"
										type="password" required autofocus>
								</div>
								<div class="form-group">
									<input name="email" type="email" class="form-control"
										placeholder="Email" required autofocus />
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="Imię" type="text"
										autofocus>
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="Nazwisko" autofocus
										type="text">
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="Numer telefonu"
										autofocus type="text">
								</div>
								<input class="btn btn-lg btn-basic btn-block" type="submit"
									value="Zarejestruj się">
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="fragment/footer.jsp" />

	<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
	<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<script src="resources/js/bootstrap.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>
</html>